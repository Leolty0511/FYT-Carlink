.class public Landroid/filterpacks/imageproc/ImageSlicer;
.super Landroid/filterfw/core/Filter;
.source "SourceFile"


# instance fields
.field private mInputHeight:I

.field private mInputWidth:I

.field private mOriginalFrame:Landroid/filterfw/core/Frame;

.field private mOutputHeight:I

.field private mOutputWidth:I

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
    iput p1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    .line 6
    .line 7
    return-void
.end method

.method private calcOutputFormatForInput(Landroid/filterfw/core/Frame;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputWidth:I

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput p1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputHeight:I

    .line 20
    .line 21
    iget v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputWidth:I

    .line 22
    .line 23
    iget v1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mXSlices:I

    .line 24
    .line 25
    add-int/2addr v0, v1

    .line 26
    add-int/lit8 v0, v0, -0x1

    .line 27
    .line 28
    div-int/2addr v0, v1

    .line 29
    iput v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceWidth:I

    .line 30
    .line 31
    iget v1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mYSlices:I

    .line 32
    .line 33
    add-int/2addr p1, v1

    .line 34
    add-int/lit8 p1, p1, -0x1

    .line 35
    .line 36
    div-int/2addr p1, v1

    .line 37
    iput p1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceHeight:I

    .line 38
    .line 39
    iget v1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mPadSize:I

    .line 40
    .line 41
    mul-int/lit8 v2, v1, 0x2

    .line 42
    .line 43
    add-int/2addr v2, v0

    .line 44
    iput v2, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOutputWidth:I

    .line 45
    .line 46
    mul-int/lit8 v1, v1, 0x2

    .line 47
    .line 48
    add-int/2addr v1, p1

    .line 49
    iput v1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOutputHeight:I

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0

    return-object p2
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 7

    .line 1
    iget v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    .line 2
    .line 3
    const-string/jumbo v1, "image"

    .line 4
    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/filterfw/core/Filter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOriginalFrame:Landroid/filterfw/core/Frame;

    .line 13
    .line 14
    invoke-direct {p0, v0}, Landroid/filterpacks/imageproc/ImageSlicer;->calcOutputFormatForInput(Landroid/filterfw/core/Frame;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOriginalFrame:Landroid/filterfw/core/Frame;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget v2, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOutputWidth:I

    .line 28
    .line 29
    iget v3, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOutputHeight:I

    .line 30
    .line 31
    invoke-virtual {v0, v2, v3}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v2, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mProgram:Landroid/filterfw/core/Program;

    .line 43
    .line 44
    if-nez v2, :cond_1

    .line 45
    .line 46
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mProgram:Landroid/filterfw/core/Program;

    .line 51
    .line 52
    :cond_1
    iget p1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    .line 53
    .line 54
    iget v2, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mXSlices:I

    .line 55
    .line 56
    rem-int v3, p1, v2

    .line 57
    .line 58
    div-int/2addr p1, v2

    .line 59
    iget v2, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceWidth:I

    .line 60
    .line 61
    mul-int/2addr v3, v2

    .line 62
    iget v2, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mPadSize:I

    .line 63
    .line 64
    sub-int/2addr v3, v2

    .line 65
    int-to-float v3, v3

    .line 66
    iget v4, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputWidth:I

    .line 67
    .line 68
    int-to-float v5, v4

    .line 69
    div-float/2addr v3, v5

    .line 70
    iget v5, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceHeight:I

    .line 71
    .line 72
    mul-int/2addr p1, v5

    .line 73
    sub-int/2addr p1, v2

    .line 74
    int-to-float p1, p1

    .line 75
    iget v2, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputHeight:I

    .line 76
    .line 77
    int-to-float v5, v2

    .line 78
    div-float/2addr p1, v5

    .line 79
    iget-object v5, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mProgram:Landroid/filterfw/core/Program;

    .line 80
    .line 81
    check-cast v5, Landroid/filterfw/core/ShaderProgram;

    .line 82
    .line 83
    iget v6, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOutputWidth:I

    .line 84
    .line 85
    int-to-float v6, v6

    .line 86
    int-to-float v4, v4

    .line 87
    div-float/2addr v6, v4

    .line 88
    iget v4, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOutputHeight:I

    .line 89
    .line 90
    int-to-float v4, v4

    .line 91
    int-to-float v2, v2

    .line 92
    div-float/2addr v4, v2

    .line 93
    invoke-virtual {v5, v3, p1, v6, v4}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mProgram:Landroid/filterfw/core/Program;

    .line 97
    .line 98
    iget-object v2, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOriginalFrame:Landroid/filterfw/core/Frame;

    .line 99
    .line 100
    invoke-virtual {p1, v2, v0}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 101
    .line 102
    .line 103
    iget p1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    .line 104
    .line 105
    const/4 v2, 0x1

    .line 106
    add-int/2addr p1, v2

    .line 107
    iput p1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    .line 108
    .line 109
    iget v3, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mXSlices:I

    .line 110
    .line 111
    iget v4, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mYSlices:I

    .line 112
    .line 113
    mul-int/2addr v3, v4

    .line 114
    const/4 v4, 0x0

    .line 115
    if-ne p1, v3, :cond_2

    .line 116
    .line 117
    iput v4, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    .line 118
    .line 119
    iget-object p1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOriginalFrame:Landroid/filterfw/core/Frame;

    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v1, v2}, Landroid/filterfw/core/Filter;->setWaitsOnInputPort(Ljava/lang/String;Z)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_2
    iget-object p1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOriginalFrame:Landroid/filterfw/core/Frame;

    .line 129
    .line 130
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->retain()Landroid/filterfw/core/Frame;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v1, v4}, Landroid/filterfw/core/Filter;->setWaitsOnInputPort(Ljava/lang/String;Z)V

    .line 134
    .line 135
    .line 136
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 140
    .line 141
    .line 142
    return-void
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
