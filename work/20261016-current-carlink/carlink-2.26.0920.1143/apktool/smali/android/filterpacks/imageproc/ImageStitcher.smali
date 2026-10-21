.class public Landroid/filterpacks/imageproc/ImageStitcher;
.super Landroid/filterfw/core/Filter;
.source "SourceFile"


# instance fields
.field private mImageHeight:I

.field private mImageWidth:I

.field private mInputHeight:I

.field private mInputWidth:I

.field private mOutputFrame:Landroid/filterfw/core/Frame;

.field private mPadSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "padSize"
    .end annotation
.end field

.field private mProgram:Landroid/filterfw/core/Program;

.field private mSliceHeight:I

.field private mSliceIndex:I

.field private mSliceWidth:I

.field private mXSlices:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "xSlices"
    .end annotation
.end field

.field private mYSlices:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "ySlices"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    .line 6
    .line 7
    return-void
.end method

.method private calcOutputFormatForInput(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    .line 16
    .line 17
    iget v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    .line 18
    .line 19
    iget v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mPadSize:I

    .line 20
    .line 21
    mul-int/lit8 v3, v2, 0x2

    .line 22
    .line 23
    sub-int/2addr v1, v3

    .line 24
    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceWidth:I

    .line 25
    .line 26
    mul-int/lit8 v2, v2, 0x2

    .line 27
    .line 28
    sub-int/2addr p1, v2

    .line 29
    iput p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceHeight:I

    .line 30
    .line 31
    iget v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mXSlices:I

    .line 32
    .line 33
    mul-int/2addr v1, v2

    .line 34
    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    .line 35
    .line 36
    iget v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mYSlices:I

    .line 37
    .line 38
    mul-int/2addr p1, v2

    .line 39
    iput p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    .line 40
    .line 41
    invoke-virtual {v0, v1, p1}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 42
    .line 43
    .line 44
    return-object v0
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0

    return-object p2
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 10

    .line 1
    const-string/jumbo v0, "image"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/filterfw/core/Filter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iget v3, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    .line 13
    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-direct {p0, v2}, Landroid/filterpacks/imageproc/ImageStitcher;->calcOutputFormatForInput(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v3, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iput-object v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mOutputFrame:Landroid/filterfw/core/Frame;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    iget v4, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    .line 36
    .line 37
    if-ne v3, v4, :cond_3

    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    iget v3, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    .line 44
    .line 45
    if-ne v2, v3, :cond_3

    .line 46
    .line 47
    :goto_0
    iget-object v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    .line 48
    .line 49
    if-nez v2, :cond_1

    .line 50
    .line 51
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    .line 56
    .line 57
    :cond_1
    iget p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mPadSize:I

    .line 58
    .line 59
    int-to-float v2, p1

    .line 60
    iget v3, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    .line 61
    .line 62
    int-to-float v3, v3

    .line 63
    div-float/2addr v2, v3

    .line 64
    int-to-float p1, p1

    .line 65
    iget v3, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    .line 66
    .line 67
    int-to-float v3, v3

    .line 68
    div-float/2addr p1, v3

    .line 69
    iget v3, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    .line 70
    .line 71
    iget v4, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mXSlices:I

    .line 72
    .line 73
    rem-int v5, v3, v4

    .line 74
    .line 75
    iget v6, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceWidth:I

    .line 76
    .line 77
    mul-int/2addr v5, v6

    .line 78
    div-int/2addr v3, v4

    .line 79
    iget v4, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceHeight:I

    .line 80
    .line 81
    mul-int/2addr v3, v4

    .line 82
    iget v4, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    .line 83
    .line 84
    sub-int/2addr v4, v5

    .line 85
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    int-to-float v4, v4

    .line 90
    iget v6, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceHeight:I

    .line 91
    .line 92
    iget v7, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    .line 93
    .line 94
    sub-int/2addr v7, v3

    .line 95
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    int-to-float v6, v6

    .line 100
    iget-object v7, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    .line 101
    .line 102
    check-cast v7, Landroid/filterfw/core/ShaderProgram;

    .line 103
    .line 104
    iget v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    .line 105
    .line 106
    int-to-float v8, v8

    .line 107
    div-float v8, v4, v8

    .line 108
    .line 109
    iget v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    .line 110
    .line 111
    int-to-float v9, v9

    .line 112
    div-float v9, v6, v9

    .line 113
    .line 114
    invoke-virtual {v7, v2, p1, v8, v9}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    .line 118
    .line 119
    check-cast p1, Landroid/filterfw/core/ShaderProgram;

    .line 120
    .line 121
    int-to-float v2, v5

    .line 122
    iget v5, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    .line 123
    .line 124
    int-to-float v7, v5

    .line 125
    div-float/2addr v2, v7

    .line 126
    int-to-float v3, v3

    .line 127
    iget v7, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    .line 128
    .line 129
    int-to-float v8, v7

    .line 130
    div-float/2addr v3, v8

    .line 131
    int-to-float v5, v5

    .line 132
    div-float/2addr v4, v5

    .line 133
    int-to-float v5, v7

    .line 134
    div-float/2addr v6, v5

    .line 135
    invoke-virtual {p1, v2, v3, v4, v6}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    .line 139
    .line 140
    iget-object v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mOutputFrame:Landroid/filterfw/core/Frame;

    .line 141
    .line 142
    invoke-virtual {p1, v1, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 143
    .line 144
    .line 145
    iget p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    .line 146
    .line 147
    add-int/lit8 p1, p1, 0x1

    .line 148
    .line 149
    iput p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    .line 150
    .line 151
    iget v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mXSlices:I

    .line 152
    .line 153
    iget v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mYSlices:I

    .line 154
    .line 155
    mul-int/2addr v1, v2

    .line 156
    if-ne p1, v1, :cond_2

    .line 157
    .line 158
    iget-object p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mOutputFrame:Landroid/filterfw/core/Frame;

    .line 159
    .line 160
    invoke-virtual {p0, v0, p1}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 161
    .line 162
    .line 163
    iget-object p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mOutputFrame:Landroid/filterfw/core/Frame;

    .line 164
    .line 165
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 166
    .line 167
    .line 168
    const/4 p1, 0x0

    .line 169
    iput p1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    .line 170
    .line 171
    :cond_2
    return-void

    .line 172
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 173
    .line 174
    const-string v0, "Image size should not change."

    .line 175
    .line 176
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw p1
.end method

.method public setupPorts()V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0, v0}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const-string/jumbo v1, "image"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/filterfw/core/Filter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1, v1}, Landroid/filterfw/core/Filter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
