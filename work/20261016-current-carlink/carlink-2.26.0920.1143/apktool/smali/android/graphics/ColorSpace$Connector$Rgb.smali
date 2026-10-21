.class Landroid/graphics/ColorSpace$Connector$Rgb;
.super Landroid/graphics/ColorSpace$Connector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace$Connector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rgb"
.end annotation


# instance fields
.field private final mDestination:Landroid/graphics/ColorSpace$Rgb;

.field private final mSource:Landroid/graphics/ColorSpace$Rgb;

.field private final mTransform:[F


# direct methods
.method public constructor <init>(Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$RenderIntent;)V
    .locals 8

    .line 1
    const/4 v6, 0x0

    .line 2
    const/4 v7, 0x0

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p1

    .line 7
    move-object v4, p2

    .line 8
    move-object v5, p3

    .line 9
    invoke-direct/range {v0 .. v7}, Landroid/graphics/ColorSpace$Connector;-><init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;[FLandroid/graphics/ColorSpace$1;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Landroid/graphics/ColorSpace$Connector$Rgb;->mSource:Landroid/graphics/ColorSpace$Rgb;

    .line 13
    .line 14
    iput-object p2, p0, Landroid/graphics/ColorSpace$Connector$Rgb;->mDestination:Landroid/graphics/ColorSpace$Rgb;

    .line 15
    .line 16
    invoke-static {p1, p2, p3}, Landroid/graphics/ColorSpace$Connector$Rgb;->computeTransform(Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$RenderIntent;)[F

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Landroid/graphics/ColorSpace$Connector$Rgb;->mTransform:[F

    .line 21
    .line 22
    return-void
.end method

.method private static computeTransform(Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$RenderIntent;)[F
    .locals 7

    .line 1
    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb;->access$000(Landroid/graphics/ColorSpace$Rgb;)[F

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Landroid/graphics/ColorSpace$Rgb;->access$000(Landroid/graphics/ColorSpace$Rgb;)[F

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Landroid/graphics/ColorSpace;->access$1500([F[F)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Landroid/graphics/ColorSpace$Rgb;->access$2500(Landroid/graphics/ColorSpace$Rgb;)[F

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb;->access$100(Landroid/graphics/ColorSpace$Rgb;)[F

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p1, p0}, Landroid/graphics/ColorSpace;->access$2600([F[F)[F

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_0
    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb;->access$100(Landroid/graphics/ColorSpace$Rgb;)[F

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {p1}, Landroid/graphics/ColorSpace$Rgb;->access$2500(Landroid/graphics/ColorSpace$Rgb;)[F

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb;->access$000(Landroid/graphics/ColorSpace$Rgb;)[F

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v2}, Landroid/graphics/ColorSpace;->access$2100([F)[F

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {p1}, Landroid/graphics/ColorSpace$Rgb;->access$000(Landroid/graphics/ColorSpace$Rgb;)[F

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-static {v3}, Landroid/graphics/ColorSpace;->access$2100([F)[F

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb;->access$000(Landroid/graphics/ColorSpace$Rgb;)[F

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    sget-object v5, Landroid/graphics/ColorSpace;->ILLUMINANT_D50:[F

    .line 57
    .line 58
    invoke-static {v4, v5}, Landroid/graphics/ColorSpace;->access$1500([F[F)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    const/4 v6, 0x3

    .line 63
    if-nez v4, :cond_1

    .line 64
    .line 65
    sget-object v0, Landroid/graphics/ColorSpace$Adaptation;->BRADFORD:Landroid/graphics/ColorSpace$Adaptation;

    .line 66
    .line 67
    iget-object v0, v0, Landroid/graphics/ColorSpace$Adaptation;->mTransform:[F

    .line 68
    .line 69
    invoke-static {}, Landroid/graphics/ColorSpace;->access$1100()[F

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-static {v0, v2, v4}, Landroid/graphics/ColorSpace;->access$2700([F[F[F)[F

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb;->access$100(Landroid/graphics/ColorSpace$Rgb;)[F

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-static {v0, p0}, Landroid/graphics/ColorSpace;->access$2600([F[F)[F

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    :cond_1
    invoke-static {p1}, Landroid/graphics/ColorSpace$Rgb;->access$000(Landroid/graphics/ColorSpace$Rgb;)[F

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-static {p0, v5}, Landroid/graphics/ColorSpace;->access$1500([F[F)Z

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    if-nez p0, :cond_2

    .line 98
    .line 99
    sget-object p0, Landroid/graphics/ColorSpace$Adaptation;->BRADFORD:Landroid/graphics/ColorSpace$Adaptation;

    .line 100
    .line 101
    iget-object p0, p0, Landroid/graphics/ColorSpace$Adaptation;->mTransform:[F

    .line 102
    .line 103
    invoke-static {}, Landroid/graphics/ColorSpace;->access$1100()[F

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-static {p0, v3, v1}, Landroid/graphics/ColorSpace;->access$2700([F[F[F)[F

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-static {p1}, Landroid/graphics/ColorSpace$Rgb;->access$100(Landroid/graphics/ColorSpace$Rgb;)[F

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-static {p0, p1}, Landroid/graphics/ColorSpace;->access$2600([F[F)[F

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-static {p0}, Landroid/graphics/ColorSpace;->access$1200([F)[F

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    :cond_2
    sget-object p0, Landroid/graphics/ColorSpace$RenderIntent;->ABSOLUTE:Landroid/graphics/ColorSpace$RenderIntent;

    .line 128
    .line 129
    if-ne p2, p0, :cond_3

    .line 130
    .line 131
    new-array p0, v6, [F

    .line 132
    .line 133
    const/4 p1, 0x0

    .line 134
    aget p2, v2, p1

    .line 135
    .line 136
    aget v4, v3, p1

    .line 137
    .line 138
    div-float/2addr p2, v4

    .line 139
    aput p2, p0, p1

    .line 140
    .line 141
    const/4 p1, 0x1

    .line 142
    aget p2, v2, p1

    .line 143
    .line 144
    aget v4, v3, p1

    .line 145
    .line 146
    div-float/2addr p2, v4

    .line 147
    aput p2, p0, p1

    .line 148
    .line 149
    const/4 p1, 0x2

    .line 150
    aget p2, v2, p1

    .line 151
    .line 152
    aget v2, v3, p1

    .line 153
    .line 154
    div-float/2addr p2, v2

    .line 155
    aput p2, p0, p1

    .line 156
    .line 157
    invoke-static {p0, v0}, Landroid/graphics/ColorSpace;->access$2800([F[F)[F

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    :cond_3
    invoke-static {v1, v0}, Landroid/graphics/ColorSpace;->access$2600([F[F)[F

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    return-object p0
.end method


# virtual methods
.method public transform([F)[F
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector$Rgb;->mSource:Landroid/graphics/ColorSpace$Rgb;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/graphics/ColorSpace$Rgb;->access$2300(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    aget v2, p1, v1

    .line 9
    .line 10
    float-to-double v2, v2

    .line 11
    invoke-static {v0, v2, v3}, Landroid/animation/b;->b(Ljava/util/function/DoubleUnaryOperator;D)D

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    double-to-float v0, v2

    .line 16
    aput v0, p1, v1

    .line 17
    .line 18
    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector$Rgb;->mSource:Landroid/graphics/ColorSpace$Rgb;

    .line 19
    .line 20
    invoke-static {v0}, Landroid/graphics/ColorSpace$Rgb;->access$2300(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v2, 0x1

    .line 25
    aget v3, p1, v2

    .line 26
    .line 27
    float-to-double v3, v3

    .line 28
    invoke-static {v0, v3, v4}, Landroid/animation/b;->b(Ljava/util/function/DoubleUnaryOperator;D)D

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    double-to-float v0, v3

    .line 33
    aput v0, p1, v2

    .line 34
    .line 35
    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector$Rgb;->mSource:Landroid/graphics/ColorSpace$Rgb;

    .line 36
    .line 37
    invoke-static {v0}, Landroid/graphics/ColorSpace$Rgb;->access$2300(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v3, 0x2

    .line 42
    aget v4, p1, v3

    .line 43
    .line 44
    float-to-double v4, v4

    .line 45
    invoke-static {v0, v4, v5}, Landroid/animation/b;->b(Ljava/util/function/DoubleUnaryOperator;D)D

    .line 46
    .line 47
    .line 48
    move-result-wide v4

    .line 49
    double-to-float v0, v4

    .line 50
    aput v0, p1, v3

    .line 51
    .line 52
    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector$Rgb;->mTransform:[F

    .line 53
    .line 54
    invoke-static {v0, p1}, Landroid/graphics/ColorSpace;->access$1300([F[F)[F

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector$Rgb;->mDestination:Landroid/graphics/ColorSpace$Rgb;

    .line 58
    .line 59
    invoke-static {v0}, Landroid/graphics/ColorSpace$Rgb;->access$2400(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    aget v4, p1, v1

    .line 64
    .line 65
    float-to-double v4, v4

    .line 66
    invoke-static {v0, v4, v5}, Landroid/animation/b;->b(Ljava/util/function/DoubleUnaryOperator;D)D

    .line 67
    .line 68
    .line 69
    move-result-wide v4

    .line 70
    double-to-float v0, v4

    .line 71
    aput v0, p1, v1

    .line 72
    .line 73
    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector$Rgb;->mDestination:Landroid/graphics/ColorSpace$Rgb;

    .line 74
    .line 75
    invoke-static {v0}, Landroid/graphics/ColorSpace$Rgb;->access$2400(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    aget v1, p1, v2

    .line 80
    .line 81
    float-to-double v4, v1

    .line 82
    invoke-static {v0, v4, v5}, Landroid/animation/b;->b(Ljava/util/function/DoubleUnaryOperator;D)D

    .line 83
    .line 84
    .line 85
    move-result-wide v0

    .line 86
    double-to-float v0, v0

    .line 87
    aput v0, p1, v2

    .line 88
    .line 89
    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector$Rgb;->mDestination:Landroid/graphics/ColorSpace$Rgb;

    .line 90
    .line 91
    invoke-static {v0}, Landroid/graphics/ColorSpace$Rgb;->access$2400(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    aget v1, p1, v3

    .line 96
    .line 97
    float-to-double v1, v1

    .line 98
    invoke-static {v0, v1, v2}, Landroid/animation/b;->b(Ljava/util/function/DoubleUnaryOperator;D)D

    .line 99
    .line 100
    .line 101
    move-result-wide v0

    .line 102
    double-to-float v0, v0

    .line 103
    aput v0, p1, v3

    .line 104
    .line 105
    return-object p1
.end method
