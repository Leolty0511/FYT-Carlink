.class public abstract Lcom/google/zxing/common/GridSampler;
.super Ljava/lang/Object;
.source "GridSampler.java"


# static fields
.field private static gridSampler:Lcom/google/zxing/common/GridSampler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/google/zxing/common/DefaultGridSampler;

    invoke-direct {v0}, Lcom/google/zxing/common/DefaultGridSampler;-><init>()V

    sput-object v0, Lcom/google/zxing/common/GridSampler;->gridSampler:Lcom/google/zxing/common/GridSampler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static checkAndNudgePoints(Lcom/google/zxing/common/BitMatrix;[F)V
    .locals 11
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "points"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 121
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v4

    .line 122
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    .line 124
    .local v0, "height":I
    const/4 v2, 0x1

    .line 125
    .local v2, "nudged":Z
    array-length v7, p1

    add-int/lit8 v1, v7, -0x1

    .line 126
    .local v1, "maxOffset":I
    const/4 v3, 0x0

    .local v3, "offset":I
    :goto_0
    if-ge v3, v1, :cond_6

    if-eqz v2, :cond_6

    .line 127
    aget v7, p1, v3

    float-to-int v5, v7

    .line 128
    .local v5, "x":I
    add-int/lit8 v7, v3, 0x1

    aget v7, p1, v7

    float-to-int v6, v7

    .line 129
    .local v6, "y":I
    if-lt v5, v9, :cond_0

    if-gt v5, v4, :cond_0

    if-lt v6, v9, :cond_0

    if-le v6, v0, :cond_1

    .line 130
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v7

    throw v7

    .line 132
    :cond_1
    const/4 v2, 0x0

    .line 133
    if-ne v5, v9, :cond_4

    .line 134
    aput v10, p1, v3

    .line 135
    const/4 v2, 0x1

    .line 140
    :cond_2
    :goto_1
    if-ne v6, v9, :cond_5

    .line 141
    add-int/lit8 v7, v3, 0x1

    aput v10, p1, v7

    .line 142
    const/4 v2, 0x1

    .line 126
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 136
    :cond_4
    if-ne v5, v4, :cond_2

    .line 137
    add-int/lit8 v7, v4, -0x1

    int-to-float v7, v7

    aput v7, p1, v3

    .line 138
    const/4 v2, 0x1

    goto :goto_1

    .line 143
    :cond_5
    if-ne v6, v0, :cond_3

    .line 144
    add-int/lit8 v7, v3, 0x1

    add-int/lit8 v8, v0, -0x1

    int-to-float v8, v8

    aput v8, p1, v7

    .line 145
    const/4 v2, 0x1

    goto :goto_2

    .line 149
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_6
    const/4 v2, 0x1

    .line 150
    array-length v7, p1

    add-int/lit8 v3, v7, -0x2

    :goto_3
    if-ltz v3, :cond_d

    if-eqz v2, :cond_d

    .line 151
    aget v7, p1, v3

    float-to-int v5, v7

    .line 152
    .restart local v5    # "x":I
    add-int/lit8 v7, v3, 0x1

    aget v7, p1, v7

    float-to-int v6, v7

    .line 153
    .restart local v6    # "y":I
    if-lt v5, v9, :cond_7

    if-gt v5, v4, :cond_7

    if-lt v6, v9, :cond_7

    if-le v6, v0, :cond_8

    .line 154
    :cond_7
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v7

    throw v7

    .line 156
    :cond_8
    const/4 v2, 0x0

    .line 157
    if-ne v5, v9, :cond_b

    .line 158
    aput v10, p1, v3

    .line 159
    const/4 v2, 0x1

    .line 164
    :cond_9
    :goto_4
    if-ne v6, v9, :cond_c

    .line 165
    add-int/lit8 v7, v3, 0x1

    aput v10, p1, v7

    .line 166
    const/4 v2, 0x1

    .line 150
    :cond_a
    :goto_5
    add-int/lit8 v3, v3, -0x2

    goto :goto_3

    .line 160
    :cond_b
    if-ne v5, v4, :cond_9

    .line 161
    add-int/lit8 v7, v4, -0x1

    int-to-float v7, v7

    aput v7, p1, v3

    .line 162
    const/4 v2, 0x1

    goto :goto_4

    .line 167
    :cond_c
    if-ne v6, v0, :cond_a

    .line 168
    add-int/lit8 v7, v3, 0x1

    add-int/lit8 v8, v0, -0x1

    int-to-float v8, v8

    aput v8, p1, v7

    .line 169
    const/4 v2, 0x1

    goto :goto_5

    .line 172
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_d
    return-void
.end method

.method public static getInstance()Lcom/google/zxing/common/GridSampler;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/google/zxing/common/GridSampler;->gridSampler:Lcom/google/zxing/common/GridSampler;

    return-object v0
.end method

.method public static setGridSampler(Lcom/google/zxing/common/GridSampler;)V
    .locals 0
    .param p0, "newGridSampler"    # Lcom/google/zxing/common/GridSampler;

    .prologue
    .line 48
    sput-object p0, Lcom/google/zxing/common/GridSampler;->gridSampler:Lcom/google/zxing/common/GridSampler;

    .line 49
    return-void
.end method


# virtual methods
.method public abstract sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method

.method public abstract sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method
