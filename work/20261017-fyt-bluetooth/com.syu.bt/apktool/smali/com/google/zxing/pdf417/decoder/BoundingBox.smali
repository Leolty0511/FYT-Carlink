.class final Lcom/google/zxing/pdf417/decoder/BoundingBox;
.super Ljava/lang/Object;
.source "BoundingBox.java"


# instance fields
.field private final bottomLeft:Lcom/google/zxing/ResultPoint;

.field private final bottomRight:Lcom/google/zxing/ResultPoint;

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final maxX:I

.field private final maxY:I

.field private final minX:I

.field private final minY:I

.field private final topLeft:Lcom/google/zxing/ResultPoint;

.field private final topRight:Lcom/google/zxing/ResultPoint;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V
    .locals 4
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "topLeft"    # Lcom/google/zxing/ResultPoint;
    .param p3, "bottomLeft"    # Lcom/google/zxing/ResultPoint;
    .param p4, "topRight"    # Lcom/google/zxing/ResultPoint;
    .param p5, "bottomRight"    # Lcom/google/zxing/ResultPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-eqz p2, :cond_0

    if-nez p3, :cond_3

    :cond_0
    move v0, v2

    .line 44
    .local v0, "leftUnspecified":Z
    :goto_0
    if-eqz p4, :cond_1

    if-nez p5, :cond_2

    :cond_1
    move v1, v2

    .line 45
    .local v1, "rightUnspecified":Z
    :cond_2
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 46
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    .end local v0    # "leftUnspecified":Z
    .end local v1    # "rightUnspecified":Z
    :cond_3
    move v0, v1

    .line 43
    goto :goto_0

    .line 48
    .restart local v0    # "leftUnspecified":Z
    .restart local v1    # "rightUnspecified":Z
    :cond_4
    if-eqz v0, :cond_6

    .line 49
    new-instance p2, Lcom/google/zxing/ResultPoint;

    .end local p2    # "topLeft":Lcom/google/zxing/ResultPoint;
    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    invoke-direct {p2, v3, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 50
    .restart local p2    # "topLeft":Lcom/google/zxing/ResultPoint;
    new-instance p3, Lcom/google/zxing/ResultPoint;

    .end local p3    # "bottomLeft":Lcom/google/zxing/ResultPoint;
    invoke-virtual {p5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    invoke-direct {p3, v3, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 55
    .restart local p3    # "bottomLeft":Lcom/google/zxing/ResultPoint;
    :cond_5
    :goto_1
    iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->image:Lcom/google/zxing/common/BitMatrix;

    .line 56
    iput-object p2, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topLeft:Lcom/google/zxing/ResultPoint;

    .line 57
    iput-object p3, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomLeft:Lcom/google/zxing/ResultPoint;

    .line 58
    iput-object p4, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topRight:Lcom/google/zxing/ResultPoint;

    .line 59
    iput-object p5, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomRight:Lcom/google/zxing/ResultPoint;

    .line 60
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->minX:I

    .line 61
    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    invoke-virtual {p5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->maxX:I

    .line 62
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->minY:I

    .line 63
    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    invoke-virtual {p5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->maxY:I

    .line 64
    return-void

    .line 51
    :cond_6
    if-eqz v1, :cond_5

    .line 52
    new-instance p4, Lcom/google/zxing/ResultPoint;

    .end local p4    # "topRight":Lcom/google/zxing/ResultPoint;
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    invoke-direct {p4, v2, v3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 53
    .restart local p4    # "topRight":Lcom/google/zxing/ResultPoint;
    new-instance p5, Lcom/google/zxing/ResultPoint;

    .end local p5    # "bottomRight":Lcom/google/zxing/ResultPoint;
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    invoke-direct {p5, v2, v3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .restart local p5    # "bottomRight":Lcom/google/zxing/ResultPoint;
    goto :goto_1
.end method

.method constructor <init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V
    .locals 1
    .param p1, "boundingBox"    # Lcom/google/zxing/pdf417/decoder/BoundingBox;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iget-object v0, p1, Lcom/google/zxing/pdf417/decoder/BoundingBox;->image:Lcom/google/zxing/common/BitMatrix;

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->image:Lcom/google/zxing/common/BitMatrix;

    .line 68
    iget-object v0, p1, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topLeft:Lcom/google/zxing/ResultPoint;

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topLeft:Lcom/google/zxing/ResultPoint;

    .line 69
    iget-object v0, p1, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomLeft:Lcom/google/zxing/ResultPoint;

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomLeft:Lcom/google/zxing/ResultPoint;

    .line 70
    iget-object v0, p1, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topRight:Lcom/google/zxing/ResultPoint;

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topRight:Lcom/google/zxing/ResultPoint;

    .line 71
    iget-object v0, p1, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomRight:Lcom/google/zxing/ResultPoint;

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomRight:Lcom/google/zxing/ResultPoint;

    .line 72
    iget v0, p1, Lcom/google/zxing/pdf417/decoder/BoundingBox;->minX:I

    iput v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->minX:I

    .line 73
    iget v0, p1, Lcom/google/zxing/pdf417/decoder/BoundingBox;->maxX:I

    iput v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->maxX:I

    .line 74
    iget v0, p1, Lcom/google/zxing/pdf417/decoder/BoundingBox;->minY:I

    iput v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->minY:I

    .line 75
    iget v0, p1, Lcom/google/zxing/pdf417/decoder/BoundingBox;->maxY:I

    iput v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->maxY:I

    .line 76
    return-void
.end method

.method static merge(Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/pdf417/decoder/BoundingBox;)Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .locals 6
    .param p0, "leftBox"    # Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .param p1, "rightBox"    # Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 79
    if-nez p0, :cond_0

    .line 85
    .end local p1    # "rightBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    :goto_0
    return-object p1

    .line 82
    .restart local p1    # "rightBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    :cond_0
    if-nez p1, :cond_1

    move-object p1, p0

    .line 83
    goto :goto_0

    .line 85
    :cond_1
    new-instance v0, Lcom/google/zxing/pdf417/decoder/BoundingBox;

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->image:Lcom/google/zxing/common/BitMatrix;

    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topLeft:Lcom/google/zxing/ResultPoint;

    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomLeft:Lcom/google/zxing/ResultPoint;

    iget-object v4, p1, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topRight:Lcom/google/zxing/ResultPoint;

    iget-object v5, p1, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomRight:Lcom/google/zxing/ResultPoint;

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    move-object p1, v0

    goto :goto_0
.end method


# virtual methods
.method addMissingRows(IIZ)Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .locals 12
    .param p1, "missingStartRows"    # I
    .param p2, "missingEndRows"    # I
    .param p3, "isLeft"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topLeft:Lcom/google/zxing/ResultPoint;

    .line 90
    .local v2, "newTopLeft":Lcom/google/zxing/ResultPoint;
    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomLeft:Lcom/google/zxing/ResultPoint;

    .line 91
    .local v3, "newBottomLeft":Lcom/google/zxing/ResultPoint;
    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topRight:Lcom/google/zxing/ResultPoint;

    .line 92
    .local v4, "newTopRight":Lcom/google/zxing/ResultPoint;
    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomRight:Lcom/google/zxing/ResultPoint;

    .line 94
    .local v5, "newBottomRight":Lcom/google/zxing/ResultPoint;
    if-lez p1, :cond_1

    .line 95
    if-eqz p3, :cond_4

    iget-object v11, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topLeft:Lcom/google/zxing/ResultPoint;

    .line 96
    .local v11, "top":Lcom/google/zxing/ResultPoint;
    :goto_0
    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    float-to-int v0, v0

    sub-int v9, v0, p1

    .line 97
    .local v9, "newMinY":I
    if-gez v9, :cond_0

    .line 98
    const/4 v9, 0x0

    .line 100
    :cond_0
    new-instance v10, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    int-to-float v1, v9

    invoke-direct {v10, v0, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 101
    .local v10, "newTop":Lcom/google/zxing/ResultPoint;
    if-eqz p3, :cond_5

    .line 102
    move-object v2, v10

    .line 108
    .end local v9    # "newMinY":I
    .end local v10    # "newTop":Lcom/google/zxing/ResultPoint;
    .end local v11    # "top":Lcom/google/zxing/ResultPoint;
    :cond_1
    :goto_1
    if-lez p2, :cond_3

    .line 109
    if-eqz p3, :cond_6

    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomLeft:Lcom/google/zxing/ResultPoint;

    .line 110
    .local v6, "bottom":Lcom/google/zxing/ResultPoint;
    :goto_2
    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    float-to-int v0, v0

    add-int v8, v0, p2

    .line 111
    .local v8, "newMaxY":I
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    if-lt v8, v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .line 114
    :cond_2
    new-instance v7, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    int-to-float v1, v8

    invoke-direct {v7, v0, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 115
    .local v7, "newBottom":Lcom/google/zxing/ResultPoint;
    if-eqz p3, :cond_7

    .line 116
    move-object v3, v7

    .line 122
    .end local v6    # "bottom":Lcom/google/zxing/ResultPoint;
    .end local v7    # "newBottom":Lcom/google/zxing/ResultPoint;
    .end local v8    # "newMaxY":I
    :cond_3
    :goto_3
    new-instance v0, Lcom/google/zxing/pdf417/decoder/BoundingBox;

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    return-object v0

    .line 95
    :cond_4
    iget-object v11, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topRight:Lcom/google/zxing/ResultPoint;

    goto :goto_0

    .line 104
    .restart local v9    # "newMinY":I
    .restart local v10    # "newTop":Lcom/google/zxing/ResultPoint;
    .restart local v11    # "top":Lcom/google/zxing/ResultPoint;
    :cond_5
    move-object v4, v10

    goto :goto_1

    .line 109
    .end local v9    # "newMinY":I
    .end local v10    # "newTop":Lcom/google/zxing/ResultPoint;
    .end local v11    # "top":Lcom/google/zxing/ResultPoint;
    :cond_6
    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomRight:Lcom/google/zxing/ResultPoint;

    goto :goto_2

    .line 118
    .restart local v6    # "bottom":Lcom/google/zxing/ResultPoint;
    .restart local v7    # "newBottom":Lcom/google/zxing/ResultPoint;
    .restart local v8    # "newMaxY":I
    :cond_7
    move-object v5, v7

    goto :goto_3
.end method

.method getBottomLeft()Lcom/google/zxing/ResultPoint;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomLeft:Lcom/google/zxing/ResultPoint;

    return-object v0
.end method

.method getBottomRight()Lcom/google/zxing/ResultPoint;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomRight:Lcom/google/zxing/ResultPoint;

    return-object v0
.end method

.method getMaxX()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->maxX:I

    return v0
.end method

.method getMaxY()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->maxY:I

    return v0
.end method

.method getMinX()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->minX:I

    return v0
.end method

.method getMinY()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->minY:I

    return v0
.end method

.method getTopLeft()Lcom/google/zxing/ResultPoint;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topLeft:Lcom/google/zxing/ResultPoint;

    return-object v0
.end method

.method getTopRight()Lcom/google/zxing/ResultPoint;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topRight:Lcom/google/zxing/ResultPoint;

    return-object v0
.end method
