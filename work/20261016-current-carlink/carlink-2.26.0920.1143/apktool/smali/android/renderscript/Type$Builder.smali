.class public Landroid/renderscript/Type$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mArray:[I

.field mDimFaces:Z

.field mDimMipmaps:Z

.field mDimX:I

.field mDimY:I

.field mDimZ:I

.field mElement:Landroid/renderscript/Element;

.field mRS:Landroid/renderscript/RenderScript;

.field mYuv:I


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    new-array v0, v0, [I

    .line 9
    .line 10
    iput-object v0, p0, Landroid/renderscript/Type$Builder;->mArray:[I

    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/renderscript/BaseObj;->checkValid()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 16
    .line 17
    iput-object p2, p0, Landroid/renderscript/Type$Builder;->mElement:Landroid/renderscript/Element;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public create()Landroid/renderscript/Type;
    .locals 11

    .line 1
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-lez v0, :cond_2

    .line 5
    .line 6
    iget v2, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    .line 7
    .line 8
    if-lt v2, v1, :cond_1

    .line 9
    .line 10
    iget v2, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    .line 11
    .line 12
    if-lt v2, v1, :cond_1

    .line 13
    .line 14
    iget-boolean v2, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    .line 20
    .line 21
    const-string v1, "Cube maps not supported with 3D types."

    .line 22
    .line 23
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0

    .line 27
    :cond_1
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    .line 28
    .line 29
    const-string v1, "Both X and Y dimension required when Z is present."

    .line 30
    .line 31
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0

    .line 35
    :cond_2
    :goto_0
    iget v2, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    .line 36
    .line 37
    if-lez v2, :cond_4

    .line 38
    .line 39
    iget v3, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    .line 40
    .line 41
    if-lt v3, v1, :cond_3

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_3
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    .line 45
    .line 46
    const-string v1, "X dimension required when Y is present."

    .line 47
    .line 48
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    :cond_4
    :goto_1
    iget-boolean v3, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    .line 53
    .line 54
    if-eqz v3, :cond_6

    .line 55
    .line 56
    if-lt v2, v1, :cond_5

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_5
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    .line 60
    .line 61
    const-string v1, "Cube maps require 2D Types."

    .line 62
    .line 63
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :cond_6
    :goto_2
    iget v1, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    .line 68
    .line 69
    if-eqz v1, :cond_8

    .line 70
    .line 71
    if-nez v0, :cond_7

    .line 72
    .line 73
    if-nez v3, :cond_7

    .line 74
    .line 75
    iget-boolean v0, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    .line 76
    .line 77
    if-nez v0, :cond_7

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_7
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    .line 81
    .line 82
    const-string v1, "YUV only supports basic 2D."

    .line 83
    .line 84
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v0

    .line 88
    :cond_8
    :goto_3
    const/4 v0, 0x0

    .line 89
    const/4 v1, 0x3

    .line 90
    :goto_4
    if-ltz v1, :cond_c

    .line 91
    .line 92
    iget-object v2, p0, Landroid/renderscript/Type$Builder;->mArray:[I

    .line 93
    .line 94
    aget v2, v2, v1

    .line 95
    .line 96
    if-eqz v2, :cond_9

    .line 97
    .line 98
    if-nez v0, :cond_9

    .line 99
    .line 100
    new-array v0, v1, [I

    .line 101
    .line 102
    :cond_9
    if-nez v2, :cond_b

    .line 103
    .line 104
    if-nez v0, :cond_a

    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_a
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    .line 108
    .line 109
    const-string v1, "Array dimensions must be contigous from 0."

    .line 110
    .line 111
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw v0

    .line 115
    :cond_b
    :goto_5
    add-int/lit8 v1, v1, -0x1

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_c
    iget-object v2, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 119
    .line 120
    iget-object v1, p0, Landroid/renderscript/Type$Builder;->mElement:Landroid/renderscript/Element;

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 123
    .line 124
    .line 125
    move-result-wide v3

    .line 126
    iget v5, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    .line 127
    .line 128
    iget v6, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    .line 129
    .line 130
    iget v7, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    .line 131
    .line 132
    iget-boolean v8, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    .line 133
    .line 134
    iget-boolean v9, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    .line 135
    .line 136
    iget v10, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    .line 137
    .line 138
    invoke-virtual/range {v2 .. v10}, Landroid/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    .line 139
    .line 140
    .line 141
    move-result-wide v1

    .line 142
    new-instance v3, Landroid/renderscript/Type;

    .line 143
    .line 144
    iget-object v4, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 145
    .line 146
    invoke-direct {v3, v1, v2, v4}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 147
    .line 148
    .line 149
    iget-object v1, p0, Landroid/renderscript/Type$Builder;->mElement:Landroid/renderscript/Element;

    .line 150
    .line 151
    iput-object v1, v3, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 152
    .line 153
    iget v1, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    .line 154
    .line 155
    iput v1, v3, Landroid/renderscript/Type;->mDimX:I

    .line 156
    .line 157
    iget v1, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    .line 158
    .line 159
    iput v1, v3, Landroid/renderscript/Type;->mDimY:I

    .line 160
    .line 161
    iget v1, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    .line 162
    .line 163
    iput v1, v3, Landroid/renderscript/Type;->mDimZ:I

    .line 164
    .line 165
    iget-boolean v1, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    .line 166
    .line 167
    iput-boolean v1, v3, Landroid/renderscript/Type;->mDimMipmaps:Z

    .line 168
    .line 169
    iget-boolean v1, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    .line 170
    .line 171
    iput-boolean v1, v3, Landroid/renderscript/Type;->mDimFaces:Z

    .line 172
    .line 173
    iget v1, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    .line 174
    .line 175
    iput v1, v3, Landroid/renderscript/Type;->mDimYuv:I

    .line 176
    .line 177
    iput-object v0, v3, Landroid/renderscript/Type;->mArrays:[I

    .line 178
    .line 179
    invoke-virtual {v3}, Landroid/renderscript/Type;->calcElementCount()V

    .line 180
    .line 181
    .line 182
    return-object v3
.end method

.method public setArray(II)Landroid/renderscript/Type$Builder;
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    if-ge p1, v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroid/renderscript/Type$Builder;->mArray:[I

    .line 7
    .line 8
    aput p2, v0, p1

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    .line 12
    .line 13
    const-string p2, "Array dimension out of range."

    .line 14
    .line 15
    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1
.end method

.method public setFaces(Z)Landroid/renderscript/Type$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    return-object p0
.end method

.method public setMipmaps(Z)Landroid/renderscript/Type$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    return-object p0
.end method

.method public setX(I)Landroid/renderscript/Type$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p1, v0, :cond_0

    .line 3
    .line 4
    iput p1, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    .line 8
    .line 9
    const-string v0, "Values of less than 1 for Dimension X are not valid."

    .line 10
    .line 11
    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw p1
.end method

.method public setY(I)Landroid/renderscript/Type$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p1, v0, :cond_0

    .line 3
    .line 4
    iput p1, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    .line 8
    .line 9
    const-string v0, "Values of less than 1 for Dimension Y are not valid."

    .line 10
    .line 11
    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw p1
.end method

.method public setYuvFormat(I)Landroid/renderscript/Type$Builder;
    .locals 1

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x23

    .line 6
    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const v0, 0x32315659

    .line 10
    .line 11
    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    .line 16
    .line 17
    const-string v0, "Only ImageFormat.NV21, .YV12, and .YUV_420_888 are supported.."

    .line 18
    .line 19
    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1

    .line 23
    :cond_1
    :goto_0
    iput p1, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    .line 24
    .line 25
    return-object p0
.end method

.method public setZ(I)Landroid/renderscript/Type$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p1, v0, :cond_0

    .line 3
    .line 4
    iput p1, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    .line 8
    .line 9
    const-string v0, "Values of less than 1 for Dimension Z are not valid."

    .line 10
    .line 11
    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw p1
.end method
