.class Landroid/opengl/GLLogWrapper;
.super Landroid/opengl/GLWrapperBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/opengl/GLLogWrapper$PointerInfo;
    }
.end annotation


# static fields
.field private static final FORMAT_FIXED:I = 0x2

.field private static final FORMAT_FLOAT:I = 0x1

.field private static final FORMAT_INT:I


# instance fields
.field private mArgCount:I

.field mColorArrayEnabled:Z

.field private mColorPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

.field private mLog:Ljava/io/Writer;

.field private mLogArgumentNames:Z

.field mNormalArrayEnabled:Z

.field private mNormalPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

.field mStringBuilder:Ljava/lang/StringBuilder;

.field private mTexCoordPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

.field mTextureCoordArrayEnabled:Z

.field mVertexArrayEnabled:Z

.field private mVertexPointer:Landroid/opengl/GLLogWrapper$PointerInfo;


# direct methods
.method public constructor <init>(Lr/f;Ljava/io/Writer;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/opengl/GLWrapperBase;-><init>(Lr/f;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroid/opengl/GLLogWrapper;->mColorPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 10
    .line 11
    new-instance p1, Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Landroid/opengl/GLLogWrapper;->mNormalPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 17
    .line 18
    new-instance p1, Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Landroid/opengl/GLLogWrapper;->mTexCoordPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 24
    .line 25
    new-instance p1, Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Landroid/opengl/GLLogWrapper;->mVertexPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 31
    .line 32
    iput-object p2, p0, Landroid/opengl/GLLogWrapper;->mLog:Ljava/io/Writer;

    .line 33
    .line 34
    iput-boolean p3, p0, Landroid/opengl/GLLogWrapper;->mLogArgumentNames:Z

    .line 35
    .line 36
    return-void
.end method

.method public static synthetic access$000(Landroid/opengl/GLLogWrapper;ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLLogWrapper;->toByteBuffer(ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private arg(Ljava/lang/String;F)V
    .locals 0

    .line 14
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;I)V
    .locals 0

    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V
    .locals 0

    .line 18
    invoke-direct {p0, p2, p3}, Landroid/opengl/GLLogWrapper;->toString(ILjava/nio/FloatBuffer;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p2, v0, p3}, Landroid/opengl/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;ILjava/nio/ShortBuffer;)V
    .locals 0

    .line 20
    invoke-direct {p0, p2, p3}, Landroid/opengl/GLLogWrapper;->toString(ILjava/nio/ShortBuffer;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;I[FI)V
    .locals 0

    .line 17
    invoke-direct {p0, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->toString(I[FI)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;I[II)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p2, v0, p3, p4}, Landroid/opengl/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;I[SI)V
    .locals 0

    .line 16
    invoke-direct {p0, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->toString(I[SI)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/opengl/GLLogWrapper;->mArgCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/opengl/GLLogWrapper;->mArgCount:I

    if-lez v0, :cond_0

    const-string v0, ", "

    .line 2
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mLogArgumentNames:Z

    if-eqz v0, :cond_1

    const-string v0, "="

    .line 4
    invoke-static {p1, v0}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    .line 6
    :cond_1
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;Z)V
    .locals 0

    .line 12
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private argPointer(IIILjava/nio/Buffer;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "size"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo p1, "type"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getPointerTypeName(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string/jumbo p1, "stride"

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    const-string/jumbo p1, "pointer"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private begin(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const/16 p1, 0x28

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    iput p1, p0, Landroid/opengl/GLLogWrapper;->mArgCount:I

    .line 23
    .line 24
    return-void
.end method

.method private bindArrays()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mColorArrayEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mColorPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->bindByteBuffer()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mNormalArrayEnabled:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mNormalPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->bindByteBuffer()V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mTexCoordPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->bindByteBuffer()V

    .line 26
    .line 27
    .line 28
    :cond_2
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mVertexArrayEnabled:Z

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mVertexPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->bindByteBuffer()V

    .line 35
    .line 36
    .line 37
    :cond_3
    return-void
.end method

.method private checkError()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lr/a;->glGetError()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo v2, "glError: "

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->logLine(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method private doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Landroid/opengl/GLLogWrapper$PointerInfo;I)V
    .locals 4

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string p2, " "

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p3, ":{"

    .line 18
    .line 19
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    if-eqz p4, :cond_7

    .line 30
    .line 31
    iget-object p2, p4, Landroid/opengl/GLLogWrapper$PointerInfo;->mTempByteBuffer:Ljava/nio/ByteBuffer;

    .line 32
    .line 33
    if-nez p2, :cond_1

    .line 34
    .line 35
    goto/16 :goto_2

    .line 36
    .line 37
    :cond_1
    iget p2, p4, Landroid/opengl/GLLogWrapper$PointerInfo;->mStride:I

    .line 38
    .line 39
    if-gez p2, :cond_2

    .line 40
    .line 41
    const-string/jumbo p2, "invalid stride"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    invoke-virtual {p4}, Landroid/opengl/GLLogWrapper$PointerInfo;->getStride()I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    iget-object p3, p4, Landroid/opengl/GLLogWrapper$PointerInfo;->mTempByteBuffer:Ljava/nio/ByteBuffer;

    .line 53
    .line 54
    iget v0, p4, Landroid/opengl/GLLogWrapper$PointerInfo;->mSize:I

    .line 55
    .line 56
    iget v1, p4, Landroid/opengl/GLLogWrapper$PointerInfo;->mType:I

    .line 57
    .line 58
    invoke-virtual {p4, v1}, Landroid/opengl/GLLogWrapper$PointerInfo;->sizeof(I)I

    .line 59
    .line 60
    .line 61
    move-result p4

    .line 62
    mul-int/2addr p2, p5

    .line 63
    const/4 p5, 0x0

    .line 64
    :goto_0
    if-ge p5, v0, :cond_6

    .line 65
    .line 66
    if-lez p5, :cond_3

    .line 67
    .line 68
    const-string v2, ", "

    .line 69
    .line 70
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    :cond_3
    const/16 v2, 0x1406

    .line 74
    .line 75
    if-eq v1, v2, :cond_5

    .line 76
    .line 77
    const/16 v2, 0x140c

    .line 78
    .line 79
    if-eq v1, v2, :cond_4

    .line 80
    .line 81
    packed-switch v1, :pswitch_data_0

    .line 82
    .line 83
    .line 84
    const-string v2, "?"

    .line 85
    .line 86
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :pswitch_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    div-int/lit8 v3, p2, 0x2

    .line 95
    .line 96
    invoke-virtual {v2, v3}, Ljava/nio/ShortBuffer;->get(I)S

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :pswitch_1
    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    and-int/lit16 v2, v2, 0xff

    .line 113
    .line 114
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :pswitch_2
    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_4
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    div-int/lit8 v3, p2, 0x4

    .line 139
    .line 140
    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->get(I)I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_5
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    div-int/lit8 v3, p2, 0x4

    .line 157
    .line 158
    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->get(I)F

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    :goto_1
    add-int/2addr p2, p4

    .line 170
    add-int/lit8 p5, p5, 0x1

    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_6
    const-string/jumbo p2, "}"

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :cond_7
    :goto_2
    const-string/jumbo p2, "undefined }"

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :pswitch_data_0
    .packed-switch 0x1400
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private doElement(Ljava/lang/StringBuilder;II)V
    .locals 11

    .line 1
    const-string v0, " ["

    .line 2
    .line 3
    const-string v1, " : "

    .line 4
    .line 5
    const-string v2, "] ="

    .line 6
    .line 7
    invoke-static {v0, p2, v1, p3, v2}, Landroid/app/m;->f(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mVertexArrayEnabled:Z

    .line 15
    .line 16
    const-string/jumbo v3, "v"

    .line 17
    .line 18
    .line 19
    iget-object v4, p0, Landroid/opengl/GLLogWrapper;->mVertexPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 20
    .line 21
    move-object v0, p0

    .line 22
    move-object v1, p1

    .line 23
    move v5, p3

    .line 24
    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLLogWrapper;->doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Landroid/opengl/GLLogWrapper$PointerInfo;I)V

    .line 25
    .line 26
    .line 27
    iget-boolean v7, p0, Landroid/opengl/GLLogWrapper;->mNormalArrayEnabled:Z

    .line 28
    .line 29
    const-string/jumbo v8, "n"

    .line 30
    .line 31
    .line 32
    iget-object v9, p0, Landroid/opengl/GLLogWrapper;->mNormalPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 33
    .line 34
    move-object v5, p0

    .line 35
    move-object v6, p1

    .line 36
    move v10, p3

    .line 37
    invoke-direct/range {v5 .. v10}, Landroid/opengl/GLLogWrapper;->doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Landroid/opengl/GLLogWrapper$PointerInfo;I)V

    .line 38
    .line 39
    .line 40
    iget-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mColorArrayEnabled:Z

    .line 41
    .line 42
    const-string v3, "c"

    .line 43
    .line 44
    iget-object v4, p0, Landroid/opengl/GLLogWrapper;->mColorPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 45
    .line 46
    move v5, p3

    .line 47
    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLLogWrapper;->doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Landroid/opengl/GLLogWrapper$PointerInfo;I)V

    .line 48
    .line 49
    .line 50
    iget-boolean v7, p0, Landroid/opengl/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    .line 51
    .line 52
    const-string/jumbo v8, "t"

    .line 53
    .line 54
    .line 55
    iget-object v9, p0, Landroid/opengl/GLLogWrapper;->mTexCoordPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 56
    .line 57
    move-object v5, p0

    .line 58
    invoke-direct/range {v5 .. v10}, Landroid/opengl/GLLogWrapper;->doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Landroid/opengl/GLLogWrapper$PointerInfo;I)V

    .line 59
    .line 60
    .line 61
    const-string p2, "\n"

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method private end()V
    .locals 1

    .line 1
    const-string v0, ");\n"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->flush()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private endLogIndices()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->unbindArrays()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private flush()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mLog:Ljava/io/Writer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mLog:Ljava/io/Writer;

    .line 9
    .line 10
    :goto_0
    return-void
.end method

.method private formattedAppend(Ljava/lang/StringBuilder;II)V
    .locals 1

    .line 1
    if-eqz p3, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p3, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p3, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    int-to-float p2, p2

    .line 11
    const/high16 p3, 0x47800000    # 65536.0f

    .line 12
    .line 13
    div-float/2addr p2, p3

    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method private getBeginMode(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    const-string p1, "GL_TRIANGLE_FAN"

    return-object p1

    :pswitch_1
    const-string p1, "GL_TRIANGLE_STRIP"

    return-object p1

    :pswitch_2
    const-string p1, "GL_TRIANGLES"

    return-object p1

    :pswitch_3
    const-string p1, "GL_LINE_STRIP"

    return-object p1

    :pswitch_4
    const-string p1, "GL_LINE_LOOP"

    return-object p1

    :pswitch_5
    const-string p1, "GL_LINES"

    return-object p1

    :pswitch_6
    const-string p1, "GL_POINTS"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCap(I)Ljava/lang/String;
    .locals 0

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    const-string p1, "GL_SAMPLE_COVERAGE"

    return-object p1

    :pswitch_1
    const-string p1, "GL_SAMPLE_ALPHA_TO_ONE"

    return-object p1

    :pswitch_2
    const-string p1, "GL_SAMPLE_ALPHA_TO_COVERAGE"

    return-object p1

    :pswitch_3
    const-string p1, "GL_MULTISAMPLE"

    return-object p1

    :pswitch_4
    const-string p1, "GL_COLOR_ARRAY"

    return-object p1

    :pswitch_5
    const-string p1, "GL_NORMAL_ARRAY"

    return-object p1

    :pswitch_6
    const-string p1, "GL_VERTEX_ARRAY"

    return-object p1

    :pswitch_7
    const-string p1, "GL_LIGHT7"

    return-object p1

    :pswitch_8
    const-string p1, "GL_LIGHT6"

    return-object p1

    :pswitch_9
    const-string p1, "GL_LIGHT5"

    return-object p1

    :pswitch_a
    const-string p1, "GL_LIGHT4"

    return-object p1

    :pswitch_b
    const-string p1, "GL_LIGHT3"

    return-object p1

    :pswitch_c
    const-string p1, "GL_LIGHT2"

    return-object p1

    :pswitch_d
    const-string p1, "GL_LIGHT1"

    return-object p1

    :pswitch_e
    const-string p1, "GL_LIGHT0"

    return-object p1

    :sswitch_0
    const-string p1, "GL_TEXTURE_COORD_ARRAY"

    return-object p1

    :sswitch_1
    const-string p1, "GL_RESCALE_NORMAL"

    return-object p1

    :sswitch_2
    const-string p1, "GL_TEXTURE_2D"

    return-object p1

    :sswitch_3
    const-string p1, "GL_SCISSOR_TEST"

    return-object p1

    :sswitch_4
    const-string p1, "GL_COLOR_LOGIC_OP"

    return-object p1

    :sswitch_5
    const-string p1, "GL_BLEND"

    return-object p1

    :sswitch_6
    const-string p1, "GL_DITHER"

    return-object p1

    :sswitch_7
    const-string p1, "GL_ALPHA_TEST"

    return-object p1

    :sswitch_8
    const-string p1, "GL_NORMALIZE"

    return-object p1

    :sswitch_9
    const-string p1, "GL_STENCIL_TEST"

    return-object p1

    :sswitch_a
    const-string p1, "GL_DEPTH_TEST"

    return-object p1

    :sswitch_b
    const-string p1, "GL_FOG"

    return-object p1

    :sswitch_c
    const-string p1, "GL_COLOR_MATERIAL"

    return-object p1

    :sswitch_d
    const-string p1, "GL_LIGHTING"

    return-object p1

    :sswitch_e
    const-string p1, "GL_CULL_FACE"

    return-object p1

    :sswitch_f
    const-string p1, "GL_LINE_SMOOTH"

    return-object p1

    :sswitch_10
    const-string p1, "GL_POINT_SMOOTH"

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0xb10 -> :sswitch_10
        0xb20 -> :sswitch_f
        0xb44 -> :sswitch_e
        0xb50 -> :sswitch_d
        0xb57 -> :sswitch_c
        0xb60 -> :sswitch_b
        0xb71 -> :sswitch_a
        0xb90 -> :sswitch_9
        0xba1 -> :sswitch_8
        0xbc0 -> :sswitch_7
        0xbd0 -> :sswitch_6
        0xbe2 -> :sswitch_5
        0xbf2 -> :sswitch_4
        0xc11 -> :sswitch_3
        0xde1 -> :sswitch_2
        0x803a -> :sswitch_1
        0x8078 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x4000
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8074
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x809d
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getClearBufferMask(I)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    and-int/lit16 v1, p1, 0x100

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v1, "GL_DEPTH_BUFFER_BIT"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    and-int/lit16 p1, p1, -0x101

    .line 16
    .line 17
    :cond_0
    and-int/lit16 v1, p1, 0x400

    .line 18
    .line 19
    const-string v2, " | "

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-lez v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    :cond_1
    const-string v1, "GL_STENCIL_BUFFER_BIT"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    and-int/lit16 p1, p1, -0x401

    .line 38
    .line 39
    :cond_2
    and-int/lit16 v1, p1, 0x4000

    .line 40
    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-lez v1, :cond_3

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    :cond_3
    const-string v1, "GL_COLOR_BUFFER_BIT"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    and-int/lit16 p1, p1, -0x4001

    .line 58
    .line 59
    :cond_4
    if-eqz p1, :cond_6

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-lez v1, :cond_5

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    :cond_5
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    return-object p1
.end method

.method private getClientState(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    const-string p1, "GL_TEXTURE_COORD_ARRAY"

    return-object p1

    :pswitch_2
    const-string p1, "GL_COLOR_ARRAY"

    return-object p1

    :pswitch_3
    const-string p1, "GL_NORMAL_ARRAY"

    return-object p1

    :pswitch_4
    const-string p1, "GL_VERTEX_ARRAY"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x8074
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getErrorString(I)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "GL_OUT_OF_MEMORY"

    return-object p0

    :pswitch_1
    const-string p0, "GL_STACK_UNDERFLOW"

    return-object p0

    :pswitch_2
    const-string p0, "GL_STACK_OVERFLOW"

    return-object p0

    :pswitch_3
    const-string p0, "GL_INVALID_OPERATION"

    return-object p0

    :pswitch_4
    const-string p0, "GL_INVALID_VALUE"

    return-object p0

    :pswitch_5
    const-string p0, "GL_INVALID_ENUM"

    return-object p0

    :cond_0
    const-string p0, "GL_NO_ERROR"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x500
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getFaceName(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x408

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "GL_FRONT_AND_BACK"

    return-object p1
.end method

.method private getFactor(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    const-string p1, "GL_SRC_ALPHA_SATURATE"

    return-object p1

    :pswitch_1
    const-string p1, "GL_ONE_MINUS_DST_COLOR"

    return-object p1

    :pswitch_2
    const-string p1, "GL_DST_COLOR"

    return-object p1

    :pswitch_3
    const-string p1, "GL_ONE_MINUS_DST_ALPHA"

    return-object p1

    :pswitch_4
    const-string p1, "GL_DST_ALPHA"

    return-object p1

    :pswitch_5
    const-string p1, "GL_ONE_MINUS_SRC_ALPHA"

    return-object p1

    :pswitch_6
    const-string p1, "GL_SRC_ALPHA"

    return-object p1

    :pswitch_7
    const-string p1, "GL_ONE_MINUS_SRC_COLOR"

    return-object p1

    :pswitch_8
    const-string p1, "GL_SRC_COLOR"

    return-object p1

    :cond_0
    const-string p1, "GL_ONE"

    return-object p1

    :cond_1
    const-string p1, "GL_ZERO"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x300
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getFogPName(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    const-string p1, "GL_FOG_COLOR"

    return-object p1

    :pswitch_1
    const-string p1, "GL_FOG_MODE"

    return-object p1

    :pswitch_2
    const-string p1, "GL_FOG_END"

    return-object p1

    :pswitch_3
    const-string p1, "GL_FOG_START"

    return-object p1

    :pswitch_4
    const-string p1, "GL_FOG_DENSITY"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0xb62
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getFogParamCount(I)I
    .locals 1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    const/4 p1, 0x4

    return p1

    :pswitch_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xb62
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getHex(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "0x"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method private getHintMode(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    const-string p1, "GL_NICEST"

    return-object p1

    :pswitch_1
    const-string p1, "GL_FASTEST"

    return-object p1

    :pswitch_2
    const-string p1, "GL_DONT_CARE"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1100
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getHintTarget(I)Ljava/lang/String;
    .locals 1

    const v0, 0x8192

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    const-string p1, "GL_FOG_HINT"

    return-object p1

    :pswitch_1
    const-string p1, "GL_POLYGON_SMOOTH_HINT"

    return-object p1

    :pswitch_2
    const-string p1, "GL_LINE_SMOOTH_HINT"

    return-object p1

    :pswitch_3
    const-string p1, "GL_POINT_SMOOTH_HINT"

    return-object p1

    :pswitch_4
    const-string p1, "GL_PERSPECTIVE_CORRECTION_HINT"

    return-object p1

    :cond_0
    const-string p1, "GL_GENERATE_MIPMAP_HINT"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0xc50
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getIndexType(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1401

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1403

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "GL_UNSIGNED_SHORT"

    return-object p1

    :cond_1
    const-string p1, "GL_UNSIGNED_BYTE"

    return-object p1
.end method

.method private getIntegerStateFormat(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x898d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getIntegerStateName(I)Ljava/lang/String;
    .locals 0

    sparse-switch p1, :sswitch_data_0

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_0
    const-string p1, "GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES"

    return-object p1

    :sswitch_1
    const-string p1, "GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES"

    return-object p1

    :sswitch_2
    const-string p1, "GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES"

    return-object p1

    :sswitch_3
    const-string p1, "GL_COMPRESSED_TEXTURE_FORMATS"

    return-object p1

    :sswitch_4
    const-string p1, "GL_NUM_COMPRESSED_TEXTURE_FORMATS"

    return-object p1

    :sswitch_5
    const-string p1, "GL_MAX_TEXTURE_UNITS"

    return-object p1

    :sswitch_6
    const-string p1, "GL_ALIASED_LINE_WIDTH_RANGE"

    return-object p1

    :sswitch_7
    const-string p1, "GL_ALIASED_POINT_SIZE_RANGE"

    return-object p1

    :sswitch_8
    const-string p1, "GL_MAX_ELEMENTS_INDICES"

    return-object p1

    :sswitch_9
    const-string p1, "GL_MAX_ELEMENTS_VERTICES"

    return-object p1

    :sswitch_a
    const-string p1, "GL_STENCIL_BITS"

    return-object p1

    :sswitch_b
    const-string p1, "GL_DEPTH_BITS"

    return-object p1

    :sswitch_c
    const-string p1, "GL_ALPHA_BITS"

    return-object p1

    :sswitch_d
    const-string p1, "GL_BLUE_BITS"

    return-object p1

    :sswitch_e
    const-string p1, "GL_GREEN_BITS"

    return-object p1

    :sswitch_f
    const-string p1, "GL_RED_BITS"

    return-object p1

    :sswitch_10
    const-string p1, "GL_SUBPIXEL_BITS"

    return-object p1

    :sswitch_11
    const-string p1, "GL_MAX_VIEWPORT_DIMS"

    return-object p1

    :sswitch_12
    const-string p1, "GL_MAX_TEXTURE_STACK_DEPTH"

    return-object p1

    :sswitch_13
    const-string p1, "GL_MAX_PROJECTION_STACK_DEPTH"

    return-object p1

    :sswitch_14
    const-string p1, "GL_MAX_MODELVIEW_STACK_DEPTH"

    return-object p1

    :sswitch_15
    const-string p1, "GL_MAX_TEXTURE_SIZE"

    return-object p1

    :sswitch_16
    const-string p1, "GL_MAX_LIGHTS"

    return-object p1

    :sswitch_17
    const-string p1, "GL_SMOOTH_LINE_WIDTH_RANGE"

    return-object p1

    :sswitch_18
    const-string p1, "GL_SMOOTH_POINT_SIZE_RANGE"

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0xb12 -> :sswitch_18
        0xb22 -> :sswitch_17
        0xd31 -> :sswitch_16
        0xd33 -> :sswitch_15
        0xd36 -> :sswitch_14
        0xd38 -> :sswitch_13
        0xd39 -> :sswitch_12
        0xd3a -> :sswitch_11
        0xd50 -> :sswitch_10
        0xd52 -> :sswitch_f
        0xd53 -> :sswitch_e
        0xd54 -> :sswitch_d
        0xd55 -> :sswitch_c
        0xd56 -> :sswitch_b
        0xd57 -> :sswitch_a
        0x80e8 -> :sswitch_9
        0x80e9 -> :sswitch_8
        0x846d -> :sswitch_7
        0x846e -> :sswitch_6
        0x84e2 -> :sswitch_5
        0x86a2 -> :sswitch_4
        0x86a3 -> :sswitch_3
        0x898d -> :sswitch_2
        0x898e -> :sswitch_1
        0x898f -> :sswitch_0
    .end sparse-switch
.end method

.method private getIntegerStateSize(I)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    sparse-switch p1, :sswitch_data_0

    .line 5
    .line 6
    .line 7
    return v0

    .line 8
    :sswitch_0
    const/16 p1, 0x10

    .line 9
    .line 10
    return p1

    .line 11
    :sswitch_1
    new-array p1, v2, [I

    .line 12
    .line 13
    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 14
    .line 15
    const v2, 0x86a2

    .line 16
    .line 17
    .line 18
    invoke-interface {v1, v2, p1, v0}, Lr/a;->glGetIntegerv(I[II)V

    .line 19
    .line 20
    .line 21
    aget p1, p1, v0

    .line 22
    .line 23
    return p1

    .line 24
    :sswitch_2
    return v2

    .line 25
    :sswitch_3
    return v1

    .line 26
    :sswitch_4
    return v2

    .line 27
    :sswitch_5
    return v1

    .line 28
    :sswitch_6
    return v2

    .line 29
    :sswitch_7
    return v1

    .line 30
    nop

    .line 31
    :sswitch_data_0
    .sparse-switch
        0xb12 -> :sswitch_7
        0xb22 -> :sswitch_7
        0xd31 -> :sswitch_6
        0xd33 -> :sswitch_6
        0xd36 -> :sswitch_6
        0xd38 -> :sswitch_6
        0xd39 -> :sswitch_6
        0xd3a -> :sswitch_5
        0xd50 -> :sswitch_4
        0xd52 -> :sswitch_4
        0xd53 -> :sswitch_4
        0xd54 -> :sswitch_4
        0xd55 -> :sswitch_4
        0xd56 -> :sswitch_4
        0xd57 -> :sswitch_4
        0x80e8 -> :sswitch_4
        0x80e9 -> :sswitch_4
        0x846d -> :sswitch_3
        0x846e -> :sswitch_3
        0x84e2 -> :sswitch_2
        0x86a2 -> :sswitch_2
        0x86a3 -> :sswitch_1
        0x898d -> :sswitch_0
        0x898e -> :sswitch_0
        0x898f -> :sswitch_0
    .end sparse-switch
.end method

.method private getLightModelPName(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xb52

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb53

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "GL_LIGHT_MODEL_AMBIENT"

    return-object p1

    :cond_1
    const-string p1, "GL_LIGHT_MODEL_TWO_SIDE"

    return-object p1
.end method

.method private getLightModelParamCount(I)I
    .locals 1

    const/16 v0, 0xb52

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb53

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x4

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private getLightName(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x4000

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x4007

    .line 6
    .line 7
    if-gt p1, v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v1, "GL_LIGHT"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :cond_0
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method

.method private getLightPName(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    const-string p1, "GL_QUADRATIC_ATTENUATION"

    return-object p1

    :pswitch_1
    const-string p1, "GL_LINEAR_ATTENUATION"

    return-object p1

    :pswitch_2
    const-string p1, "GL_CONSTANT_ATTENUATION"

    return-object p1

    :pswitch_3
    const-string p1, "GL_SPOT_CUTOFF"

    return-object p1

    :pswitch_4
    const-string p1, "GL_SPOT_EXPONENT"

    return-object p1

    :pswitch_5
    const-string p1, "GL_SPOT_DIRECTION"

    return-object p1

    :pswitch_6
    const-string p1, "GL_POSITION"

    return-object p1

    :pswitch_7
    const-string p1, "GL_SPECULAR"

    return-object p1

    :pswitch_8
    const-string p1, "GL_DIFFUSE"

    return-object p1

    :pswitch_9
    const-string p1, "GL_AMBIENT"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1200
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getLightParamCount(I)I
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    return v1

    :pswitch_1
    const/4 p1, 0x3

    return p1

    :pswitch_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1200
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getMaterialPName(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    const-string p1, "GL_AMBIENT_AND_DIFFUSE"

    return-object p1

    :pswitch_1
    const-string p1, "GL_SHININESS"

    return-object p1

    :pswitch_2
    const-string p1, "GL_EMISSION"

    return-object p1

    :pswitch_3
    const-string p1, "GL_SPECULAR"

    return-object p1

    :pswitch_4
    const-string p1, "GL_DIFFUSE"

    return-object p1

    :pswitch_5
    const-string p1, "GL_AMBIENT"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1200
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1600
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getMaterialParamCount(I)I
    .locals 1

    const/4 v0, 0x4

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p1, 0x0

    return p1

    :pswitch_0
    return v0

    :pswitch_1
    const/4 p1, 0x1

    return p1

    :pswitch_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1200
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1600
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getMatrixMode(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    const-string p1, "GL_TEXTURE"

    return-object p1

    :pswitch_1
    const-string p1, "GL_PROJECTION"

    return-object p1

    :pswitch_2
    const-string p1, "GL_MODELVIEW"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1700
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPointerTypeName(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1406

    if-eq p1, v0, :cond_1

    const/16 v0, 0x140c

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    const-string p1, "GL_SHORT"

    return-object p1

    :pswitch_1
    const-string p1, "GL_UNSIGNED_BYTE"

    return-object p1

    :pswitch_2
    const-string p1, "GL_BYTE"

    return-object p1

    :cond_0
    const-string p1, "GL_FIXED"

    return-object p1

    :cond_1
    const-string p1, "GL_FLOAT"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1400
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getShadeModel(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1d00

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1d01

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "GL_SMOOTH"

    return-object p1

    :cond_1
    const-string p1, "GL_FLAT"

    return-object p1
.end method

.method private getTextureEnvPName(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x2200

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2201

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "GL_TEXTURE_ENV_COLOR"

    return-object p1

    :cond_1
    const-string p1, "GL_TEXTURE_ENV_MODE"

    return-object p1
.end method

.method private getTextureEnvParamCount(I)I
    .locals 1

    const/16 v0, 0x2200

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2201

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x4

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private getTextureEnvParamName(F)Ljava/lang/String;
    .locals 2

    .line 1
    float-to-int v0, p1

    .line 2
    int-to-float v1, v0

    .line 3
    cmpl-float v1, p1, v1

    .line 4
    .line 5
    if-nez v1, :cond_6

    .line 6
    .line 7
    const/16 p1, 0x104

    .line 8
    .line 9
    if-eq v0, p1, :cond_5

    .line 10
    .line 11
    const/16 p1, 0xbe2

    .line 12
    .line 13
    if-eq v0, p1, :cond_4

    .line 14
    .line 15
    const/16 p1, 0x1e01

    .line 16
    .line 17
    if-eq v0, p1, :cond_3

    .line 18
    .line 19
    const p1, 0x8570

    .line 20
    .line 21
    .line 22
    if-eq v0, p1, :cond_2

    .line 23
    .line 24
    const/16 p1, 0x2100

    .line 25
    .line 26
    if-eq v0, p1, :cond_1

    .line 27
    .line 28
    const/16 p1, 0x2101

    .line 29
    .line 30
    if-eq v0, p1, :cond_0

    .line 31
    .line 32
    invoke-static {v0}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    :cond_0
    const-string p1, "GL_DECAL"

    .line 38
    .line 39
    return-object p1

    .line 40
    :cond_1
    const-string p1, "GL_MODULATE"

    .line 41
    .line 42
    return-object p1

    .line 43
    :cond_2
    const-string p1, "GL_COMBINE"

    .line 44
    .line 45
    return-object p1

    .line 46
    :cond_3
    const-string p1, "GL_REPLACE"

    .line 47
    .line 48
    return-object p1

    .line 49
    :cond_4
    const-string p1, "GL_BLEND"

    .line 50
    .line 51
    return-object p1

    .line 52
    :cond_5
    const-string p1, "GL_ADD"

    .line 53
    .line 54
    return-object p1

    .line 55
    :cond_6
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1
.end method

.method private getTextureEnvTarget(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x2300

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "GL_TEXTURE_ENV"

    return-object p1
.end method

.method private getTexturePName(I)Ljava/lang/String;
    .locals 1

    const v0, 0x8191

    if-eq p1, v0, :cond_1

    const v0, 0x8b9d

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    const-string p1, "GL_TEXTURE_WRAP_T"

    return-object p1

    :pswitch_1
    const-string p1, "GL_TEXTURE_WRAP_S"

    return-object p1

    :pswitch_2
    const-string p1, "GL_TEXTURE_MIN_FILTER"

    return-object p1

    :pswitch_3
    const-string p1, "GL_TEXTURE_MAG_FILTER"

    return-object p1

    :cond_0
    const-string p1, "GL_TEXTURE_CROP_RECT_OES"

    return-object p1

    :cond_1
    const-string p1, "GL_GENERATE_MIPMAP"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2800
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTextureParamName(F)Ljava/lang/String;
    .locals 2

    .line 1
    float-to-int v0, p1

    .line 2
    int-to-float v1, v0

    .line 3
    cmpl-float v1, p1, v1

    .line 4
    .line 5
    if-nez v1, :cond_4

    .line 6
    .line 7
    const/16 p1, 0x2600

    .line 8
    .line 9
    if-eq v0, p1, :cond_3

    .line 10
    .line 11
    const/16 p1, 0x2601

    .line 12
    .line 13
    if-eq v0, p1, :cond_2

    .line 14
    .line 15
    const/16 p1, 0x2901

    .line 16
    .line 17
    if-eq v0, p1, :cond_1

    .line 18
    .line 19
    const p1, 0x812f

    .line 20
    .line 21
    .line 22
    if-eq v0, p1, :cond_0

    .line 23
    .line 24
    packed-switch v0, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    :pswitch_0
    const-string p1, "GL_LINEAR_MIPMAP_LINEAR"

    .line 33
    .line 34
    return-object p1

    .line 35
    :pswitch_1
    const-string p1, "GL_NEAREST_MIPMAP_LINEAR"

    .line 36
    .line 37
    return-object p1

    .line 38
    :pswitch_2
    const-string p1, "GL_LINEAR_MIPMAP_NEAREST"

    .line 39
    .line 40
    return-object p1

    .line 41
    :pswitch_3
    const-string p1, "GL_NEAREST_MIPMAP_NEAREST"

    .line 42
    .line 43
    return-object p1

    .line 44
    :cond_0
    const-string p1, "GL_CLAMP_TO_EDGE"

    .line 45
    .line 46
    return-object p1

    .line 47
    :cond_1
    const-string p1, "GL_REPEAT"

    .line 48
    .line 49
    return-object p1

    .line 50
    :cond_2
    const-string p1, "GL_LINEAR"

    .line 51
    .line 52
    return-object p1

    .line 53
    :cond_3
    const-string p1, "GL_NEAREST"

    .line 54
    .line 55
    return-object p1

    .line 56
    :cond_4
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1

    .line 61
    :pswitch_data_0
    .packed-switch 0x2700
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTextureTarget(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xde1

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "GL_TEXTURE_2D"

    return-object p1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mLog:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private logLine(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    return-void
.end method

.method private returns(I)V
    .locals 0

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    return-void
.end method

.method private returns(Ljava/lang/String;)V
    .locals 2

    const-string v0, ") returns "

    const-string v1, ";\n"

    .line 1
    invoke-static {v0, p1, v1}, Landroid/accessibilityservice/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->flush()V

    return-void
.end method

.method private startLogIndices()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "\n"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->bindArrays()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private toByteBuffer(ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-gez p1, :cond_0

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move v1, v0

    .line 7
    :goto_0
    instance-of v2, p2, Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    if-eqz v2, :cond_3

    .line 10
    .line 11
    check-cast p2, Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    sub-int/2addr p1, v2

    .line 24
    :cond_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :goto_1
    if-ge v0, p1, :cond_2

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 43
    .line 44
    .line 45
    add-int/lit8 v0, v0, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 49
    .line 50
    .line 51
    goto/16 :goto_8

    .line 52
    .line 53
    :cond_3
    instance-of v2, p2, Ljava/nio/CharBuffer;

    .line 54
    .line 55
    if-eqz v2, :cond_6

    .line 56
    .line 57
    check-cast p2, Ljava/nio/CharBuffer;

    .line 58
    .line 59
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    sub-int/2addr p1, v2

    .line 70
    mul-int/lit8 p1, p1, 0x2

    .line 71
    .line 72
    :cond_4
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->order()Ljava/nio/ByteOrder;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    :goto_2
    div-int/lit8 v4, p1, 0x2

    .line 89
    .line 90
    if-ge v0, v4, :cond_5

    .line 91
    .line 92
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->get()C

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    invoke-virtual {v3, v4}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 97
    .line 98
    .line 99
    add-int/lit8 v0, v0, 0x1

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_5
    invoke-virtual {p2, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 103
    .line 104
    .line 105
    goto/16 :goto_8

    .line 106
    .line 107
    :cond_6
    instance-of v2, p2, Ljava/nio/ShortBuffer;

    .line 108
    .line 109
    if-eqz v2, :cond_9

    .line 110
    .line 111
    check-cast p2, Ljava/nio/ShortBuffer;

    .line 112
    .line 113
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-eqz v1, :cond_7

    .line 118
    .line 119
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    sub-int/2addr p1, v2

    .line 124
    mul-int/lit8 p1, p1, 0x2

    .line 125
    .line 126
    :cond_7
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {p2}, Ljava/nio/ShortBuffer;->order()Ljava/nio/ByteOrder;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    :goto_3
    div-int/lit8 v4, p1, 0x2

    .line 143
    .line 144
    if-ge v0, v4, :cond_8

    .line 145
    .line 146
    invoke-virtual {p2}, Ljava/nio/ShortBuffer;->get()S

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    invoke-virtual {v3, v4}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 151
    .line 152
    .line 153
    add-int/lit8 v0, v0, 0x1

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_8
    invoke-virtual {p2, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 157
    .line 158
    .line 159
    goto/16 :goto_8

    .line 160
    .line 161
    :cond_9
    instance-of v2, p2, Ljava/nio/IntBuffer;

    .line 162
    .line 163
    if-eqz v2, :cond_c

    .line 164
    .line 165
    check-cast p2, Ljava/nio/IntBuffer;

    .line 166
    .line 167
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    if-eqz v1, :cond_a

    .line 172
    .line 173
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    sub-int/2addr p1, v2

    .line 178
    mul-int/lit8 p1, p1, 0x4

    .line 179
    .line 180
    :cond_a
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->order()Ljava/nio/ByteOrder;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    :goto_4
    div-int/lit8 v4, p1, 0x4

    .line 197
    .line 198
    if-ge v0, v4, :cond_b

    .line 199
    .line 200
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->get()I

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    invoke-virtual {v3, v4}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 205
    .line 206
    .line 207
    add-int/lit8 v0, v0, 0x1

    .line 208
    .line 209
    goto :goto_4

    .line 210
    :cond_b
    invoke-virtual {p2, v2}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 211
    .line 212
    .line 213
    goto/16 :goto_8

    .line 214
    .line 215
    :cond_c
    instance-of v2, p2, Ljava/nio/FloatBuffer;

    .line 216
    .line 217
    if-eqz v2, :cond_f

    .line 218
    .line 219
    check-cast p2, Ljava/nio/FloatBuffer;

    .line 220
    .line 221
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    if-eqz v1, :cond_d

    .line 226
    .line 227
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    sub-int/2addr p1, v2

    .line 232
    mul-int/lit8 p1, p1, 0x4

    .line 233
    .line 234
    :cond_d
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->order()Ljava/nio/ByteOrder;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    :goto_5
    div-int/lit8 v4, p1, 0x4

    .line 251
    .line 252
    if-ge v0, v4, :cond_e

    .line 253
    .line 254
    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->get()F

    .line 255
    .line 256
    .line 257
    move-result v4

    .line 258
    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 259
    .line 260
    .line 261
    add-int/lit8 v0, v0, 0x1

    .line 262
    .line 263
    goto :goto_5

    .line 264
    :cond_e
    invoke-virtual {p2, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 265
    .line 266
    .line 267
    goto :goto_8

    .line 268
    :cond_f
    instance-of v2, p2, Ljava/nio/DoubleBuffer;

    .line 269
    .line 270
    if-eqz v2, :cond_12

    .line 271
    .line 272
    check-cast p2, Ljava/nio/DoubleBuffer;

    .line 273
    .line 274
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    if-eqz v1, :cond_10

    .line 279
    .line 280
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    .line 281
    .line 282
    .line 283
    move-result p1

    .line 284
    sub-int/2addr p1, v2

    .line 285
    mul-int/lit8 p1, p1, 0x8

    .line 286
    .line 287
    :cond_10
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    invoke-virtual {p2}, Ljava/nio/DoubleBuffer;->order()Ljava/nio/ByteOrder;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    :goto_6
    div-int/lit8 v4, p1, 0x8

    .line 304
    .line 305
    if-ge v0, v4, :cond_11

    .line 306
    .line 307
    invoke-virtual {p2}, Ljava/nio/DoubleBuffer;->get()D

    .line 308
    .line 309
    .line 310
    move-result-wide v4

    .line 311
    invoke-virtual {v3, v4, v5}, Ljava/nio/DoubleBuffer;->put(D)Ljava/nio/DoubleBuffer;

    .line 312
    .line 313
    .line 314
    add-int/lit8 v0, v0, 0x1

    .line 315
    .line 316
    goto :goto_6

    .line 317
    :cond_11
    invoke-virtual {p2, v2}, Ljava/nio/DoubleBuffer;->position(I)Ljava/nio/Buffer;

    .line 318
    .line 319
    .line 320
    goto :goto_8

    .line 321
    :cond_12
    instance-of v2, p2, Ljava/nio/LongBuffer;

    .line 322
    .line 323
    if-eqz v2, :cond_15

    .line 324
    .line 325
    check-cast p2, Ljava/nio/LongBuffer;

    .line 326
    .line 327
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    .line 328
    .line 329
    .line 330
    move-result v2

    .line 331
    if-eqz v1, :cond_13

    .line 332
    .line 333
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    .line 334
    .line 335
    .line 336
    move-result p1

    .line 337
    sub-int/2addr p1, v2

    .line 338
    mul-int/lit8 p1, p1, 0x8

    .line 339
    .line 340
    :cond_13
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    invoke-virtual {p2}, Ljava/nio/LongBuffer;->order()Ljava/nio/ByteOrder;

    .line 345
    .line 346
    .line 347
    move-result-object v3

    .line 348
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    .line 353
    .line 354
    .line 355
    move-result-object v3

    .line 356
    :goto_7
    div-int/lit8 v4, p1, 0x8

    .line 357
    .line 358
    if-ge v0, v4, :cond_14

    .line 359
    .line 360
    invoke-virtual {p2}, Ljava/nio/LongBuffer;->get()J

    .line 361
    .line 362
    .line 363
    move-result-wide v4

    .line 364
    invoke-virtual {v3, v4, v5}, Ljava/nio/LongBuffer;->put(J)Ljava/nio/LongBuffer;

    .line 365
    .line 366
    .line 367
    add-int/lit8 v0, v0, 0x1

    .line 368
    .line 369
    goto :goto_7

    .line 370
    :cond_14
    invoke-virtual {p2, v2}, Ljava/nio/LongBuffer;->position(I)Ljava/nio/Buffer;

    .line 371
    .line 372
    .line 373
    :goto_8
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 374
    .line 375
    .line 376
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 377
    .line 378
    .line 379
    move-result-object p1

    .line 380
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 381
    .line 382
    .line 383
    return-object v1

    .line 384
    :cond_15
    new-instance p1, Ljava/lang/RuntimeException;

    .line 385
    .line 386
    const-string p2, "Unimplemented Buffer subclass."

    .line 387
    .line 388
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    throw p1
.end method

.method private toCharIndices(IILjava/nio/Buffer;)[C
    .locals 3

    .line 1
    new-array v0, p1, [C

    .line 2
    .line 3
    const/16 v1, 0x1401

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eq p2, v1, :cond_2

    .line 7
    .line 8
    const/16 v1, 0x1403

    .line 9
    .line 10
    if-eq p2, v1, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    instance-of p2, p3, Ljava/nio/CharBuffer;

    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    check-cast p3, Ljava/nio/CharBuffer;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    mul-int/lit8 p1, p1, 0x2

    .line 21
    .line 22
    invoke-direct {p0, p1, p3}, Landroid/opengl/GLLogWrapper;->toByteBuffer(ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    :goto_0
    invoke-virtual {p3}, Ljava/nio/Buffer;->position()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-virtual {p3, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3, v0}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3, p1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    invoke-direct {p0, p1, p3}, Landroid/opengl/GLLogWrapper;->toByteBuffer(ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    :goto_1
    if-ge v2, p1, :cond_3

    .line 57
    .line 58
    add-int v1, p2, v2

    .line 59
    .line 60
    aget-byte v1, p3, v1

    .line 61
    .line 62
    and-int/lit16 v1, v1, 0xff

    .line 63
    .line 64
    int-to-char v1, v1

    .line 65
    aput-char v1, v0, v2

    .line 66
    .line 67
    add-int/lit8 v2, v2, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    :goto_2
    return-object v0
.end method

.method private toString(IILjava/nio/IntBuffer;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "{\n"

    .line 1
    invoke-static {v0}, Landroid/accessibilityservice/c;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p3, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    invoke-direct {p0, v0, v2, p2}, Landroid/opengl/GLLogWrapper;->formattedAppend(Ljava/lang/StringBuilder;II)V

    const/16 v2, 0xa

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "}"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private toString(II[II)Ljava/lang/String;
    .locals 6

    const-string/jumbo v0, "{\n"

    .line 10
    invoke-static {v0}, Landroid/accessibilityservice/c;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    add-int v3, p4, v2

    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ltz v3, :cond_1

    if-lt v3, v1, :cond_0

    goto :goto_1

    .line 13
    :cond_0
    aget v3, p3, v3

    invoke-direct {p0, v0, v3, p2}, Landroid/opengl/GLLogWrapper;->formattedAppend(Ljava/lang/StringBuilder;II)V

    goto :goto_2

    :cond_1
    :goto_1
    const-string/jumbo v3, "out of bounds"

    .line 14
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const/16 v3, 0xa

    .line 15
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "}"

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private toString(ILjava/nio/FloatBuffer;)Ljava/lang/String;
    .locals 4

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    const-string v2, " ["

    const-string v3, "] = "

    .line 38
    invoke-static {v2, v1, v3}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 39
    invoke-virtual {p2, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "}"

    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private toString(ILjava/nio/ShortBuffer;)Ljava/lang/String;
    .locals 4

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    const-string v2, " ["

    const-string v3, "] = "

    .line 47
    invoke-static {v2, v1, v3}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 48
    invoke-virtual {p2, v1}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "}"

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private toString(I[FI)Ljava/lang/String;
    .locals 6

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    add-int v3, p3, v2

    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ltz v3, :cond_1

    if-lt v3, v1, :cond_0

    goto :goto_1

    .line 32
    :cond_0
    aget v3, p2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    :goto_1
    const-string/jumbo v3, "out of bounds"

    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const/16 v3, 0xa

    .line 34
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "}"

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private toString(I[SI)Ljava/lang/String;
    .locals 6

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    add-int v3, p3, v2

    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ltz v3, :cond_1

    if-lt v3, v1, :cond_0

    goto :goto_1

    .line 24
    :cond_0
    aget-short v3, p2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    :goto_1
    const-string/jumbo v3, "out of bounds"

    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const/16 v3, 0xa

    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "}"

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private unbindArrays()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mColorArrayEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mColorPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->unbindByteBuffer()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mNormalArrayEnabled:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mNormalPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->unbindByteBuffer()V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mTexCoordPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->unbindByteBuffer()V

    .line 26
    .line 27
    .line 28
    :cond_2
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mVertexArrayEnabled:Z

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mVertexPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->unbindByteBuffer()V

    .line 35
    .line 36
    .line 37
    :cond_3
    return-void
.end method


# virtual methods
.method public glActiveTexture(I)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glActiveTexture"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "texture"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lr/a;->glActiveTexture(I)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public glAlphaFunc(IF)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glAlphaFunc"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "func"

    .line 8
    .line 9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v0, "ref"

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 22
    .line 23
    invoke-interface {v0, p1, p2}, Lr/a;->glAlphaFunc(IF)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public glAlphaFuncx(II)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glAlphaFuncx"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "func"

    .line 8
    .line 9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v0, "ref"

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 22
    .line 23
    invoke-interface {v0, p1, p2}, Lr/a;->glAlphaFuncx(II)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public glBindBuffer(II)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glBindBuffer"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "target"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string v0, "buffer"

    .line 14
    .line 15
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    .line 22
    .line 23
    invoke-interface {v0, p1, p2}, Lr/c;->glBindBuffer(II)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public glBindFramebufferOES(II)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glBindFramebufferOES"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "target"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string v0, "framebuffer"

    .line 14
    .line 15
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    .line 22
    .line 23
    invoke-interface {v0, p1, p2}, Lr/e;->glBindFramebufferOES(II)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public glBindRenderbufferOES(II)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glBindRenderbufferOES"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "target"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "renderbuffer"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    .line 23
    .line 24
    invoke-interface {v0, p1, p2}, Lr/e;->glBindRenderbufferOES(II)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public glBindTexture(II)V
    .locals 2

    .line 1
    const-string/jumbo v0, "glBindTexture"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "target"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string/jumbo v0, "texture"

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 27
    .line 28
    invoke-interface {v0, p1, p2}, Lr/a;->glBindTexture(II)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public glBlendEquation(I)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glBlendEquation"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "mode"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lr/e;->glBlendEquation(I)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public glBlendEquationSeparate(II)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glBlendEquationSeparate"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "modeRGB"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "modeAlpha"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    .line 23
    .line 24
    invoke-interface {v0, p1, p2}, Lr/e;->glBlendEquationSeparate(II)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public glBlendFunc(II)V
    .locals 2

    .line 1
    const-string/jumbo v0, "glBlendFunc"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "sfactor"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFactor(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "dfactor"

    .line 18
    .line 19
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getFactor(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 30
    .line 31
    invoke-interface {v0, p1, p2}, Lr/a;->glBlendFunc(II)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public glBlendFuncSeparate(IIII)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glBlendFuncSeparate"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "srcRGB"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string v0, "dstRGB"

    .line 14
    .line 15
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    const-string/jumbo v0, "srcAlpha"

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    const-string v0, "dstAlpha"

    .line 25
    .line 26
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    .line 33
    .line 34
    invoke-interface {v0, p1, p2, p3, p4}, Lr/e;->glBlendFuncSeparate(IIII)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public glBufferData(IILjava/nio/Buffer;I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "glBufferData"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "target"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "size"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "data"

    .line 24
    .line 25
    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string/jumbo v0, "usage"

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    .line 38
    .line 39
    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glBufferData(IILjava/nio/Buffer;I)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public glBufferSubData(IIILjava/nio/Buffer;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "glBufferSubData"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "target"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "offset"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    const-string/jumbo v0, "size"

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "data"

    .line 30
    .line 31
    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    .line 38
    .line 39
    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public glCheckFramebufferStatusOES(I)I
    .locals 1

    .line 1
    const-string/jumbo v0, "glCheckFramebufferStatusOES"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "target"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lr/e;->glCheckFramebufferStatusOES(I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 23
    .line 24
    .line 25
    return p1
.end method

.method public glClear(I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "glClear"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "mask"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getClearBufferMask(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 21
    .line 22
    invoke-interface {v0, p1}, Lr/a;->glClear(I)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public glClearColor(FFFF)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glClearColor"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "red"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "green"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 17
    .line 18
    .line 19
    const-string v0, "blue"

    .line 20
    .line 21
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 22
    .line 23
    .line 24
    const-string v0, "alpha"

    .line 25
    .line 26
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 33
    .line 34
    invoke-interface {v0, p1, p2, p3, p4}, Lr/a;->glClearColor(FFFF)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public glClearColorx(IIII)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glClearColor"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "red"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "green"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    const-string v0, "blue"

    .line 20
    .line 21
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    const-string v0, "alpha"

    .line 25
    .line 26
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 33
    .line 34
    invoke-interface {v0, p1, p2, p3, p4}, Lr/a;->glClearColorx(IIII)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public glClearDepthf(F)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glClearDepthf"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "depth"

    .line 8
    .line 9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Lr/a;->glClearDepthf(F)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public glClearDepthx(I)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glClearDepthx"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "depth"

    .line 8
    .line 9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Lr/a;->glClearDepthx(I)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public glClearStencil(I)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glClearStencil"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "s"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lr/a;->glClearStencil(I)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public glClientActiveTexture(I)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glClientActiveTexture"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "texture"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lr/a;->glClientActiveTexture(I)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public glClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 2

    const-string/jumbo v0, "glClipPlanef"

    .line 8
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "plane"

    .line 9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "equation"

    const/4 v1, 0x4

    .line 10
    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 12
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2}, Lr/c;->glClipPlanef(ILjava/nio/FloatBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClipPlanef(I[FI)V
    .locals 2

    const-string/jumbo v0, "glClipPlanef"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "plane"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "equation"

    const/4 v1, 0x4

    .line 3
    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string/jumbo v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glClipPlanef(I[FI)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClipPlanex(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string/jumbo v0, "glClipPlanef"

    .line 8
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "plane"

    .line 9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "equation"

    const/4 v1, 0x4

    .line 10
    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 12
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2}, Lr/c;->glClipPlanex(ILjava/nio/IntBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClipPlanex(I[II)V
    .locals 2

    const-string/jumbo v0, "glClipPlanex"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "plane"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "equation"

    const/4 v1, 0x4

    .line 3
    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string/jumbo v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glClipPlanex(I[II)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glColor4f(FFFF)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glColor4f"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "red"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "green"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 17
    .line 18
    .line 19
    const-string v0, "blue"

    .line 20
    .line 21
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 22
    .line 23
    .line 24
    const-string v0, "alpha"

    .line 25
    .line 26
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 33
    .line 34
    invoke-interface {v0, p1, p2, p3, p4}, Lr/a;->glColor4f(FFFF)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public glColor4ub(BBBB)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glColor4ub"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "red"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "green"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    const-string v0, "blue"

    .line 20
    .line 21
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    const-string v0, "alpha"

    .line 25
    .line 26
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    .line 33
    .line 34
    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glColor4ub(BBBB)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public glColor4x(IIII)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glColor4x"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "red"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "green"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    const-string v0, "blue"

    .line 20
    .line 21
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    const-string v0, "alpha"

    .line 25
    .line 26
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 33
    .line 34
    invoke-interface {v0, p1, p2, p3, p4}, Lr/a;->glColor4x(IIII)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public glColorMask(ZZZZ)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glColorMask"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "red"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "green"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    const-string v0, "blue"

    .line 20
    .line 21
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    const-string v0, "alpha"

    .line 25
    .line 26
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 33
    .line 34
    invoke-interface {v0, p1, p2, p3, p4}, Lr/a;->glColorMask(ZZZZ)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public glColorPointer(IIII)V
    .locals 1

    const-string/jumbo v0, "glColorPointer"

    .line 7
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "size"

    .line 8
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "type"

    .line 9
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "stride"

    .line 10
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "offset"

    .line 11
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 13
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glColorPointer(IIII)V

    .line 14
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glColorPointer(IIILjava/nio/Buffer;)V
    .locals 7

    const-string/jumbo v0, "glColorPointer"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->argPointer(IIILjava/nio/Buffer;)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 4
    new-instance v0, Landroid/opengl/GLLogWrapper$PointerInfo;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;IIILjava/nio/Buffer;)V

    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mColorPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/a;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    const-string/jumbo v1, "glCompressedTexImage2D"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v1, "target"

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-direct {p0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string/jumbo v1, "level"

    .line 19
    .line 20
    .line 21
    move v4, p2

    .line 22
    invoke-direct {p0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    const-string/jumbo v1, "internalformat"

    .line 26
    .line 27
    .line 28
    move v5, p3

    .line 29
    invoke-direct {p0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    const-string/jumbo v1, "width"

    .line 33
    .line 34
    .line 35
    move v6, p4

    .line 36
    invoke-direct {p0, v1, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    const-string/jumbo v1, "height"

    .line 40
    .line 41
    .line 42
    move/from16 v7, p5

    .line 43
    .line 44
    invoke-direct {p0, v1, v7}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    const-string v1, "border"

    .line 48
    .line 49
    move/from16 v8, p6

    .line 50
    .line 51
    invoke-direct {p0, v1, v8}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    const-string/jumbo v1, "imageSize"

    .line 55
    .line 56
    .line 57
    move/from16 v9, p7

    .line 58
    .line 59
    invoke-direct {p0, v1, v9}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string v2, "data"

    .line 67
    .line 68
    invoke-direct {p0, v2, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 72
    .line 73
    .line 74
    iget-object v2, v0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 75
    .line 76
    move v3, p1

    .line 77
    move-object/from16 v10, p8

    .line 78
    .line 79
    invoke-interface/range {v2 .. v10}, Lr/a;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    const-string/jumbo v1, "glCompressedTexSubImage2D"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v1, "target"

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-direct {p0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string/jumbo v1, "level"

    .line 19
    .line 20
    .line 21
    move v4, p2

    .line 22
    invoke-direct {p0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    const-string/jumbo v1, "xoffset"

    .line 26
    .line 27
    .line 28
    move v5, p3

    .line 29
    invoke-direct {p0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    const-string/jumbo v1, "yoffset"

    .line 33
    .line 34
    .line 35
    move/from16 v6, p4

    .line 36
    .line 37
    invoke-direct {p0, v1, v6}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    const-string/jumbo v1, "width"

    .line 41
    .line 42
    .line 43
    move/from16 v7, p5

    .line 44
    .line 45
    invoke-direct {p0, v1, v7}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    const-string/jumbo v1, "height"

    .line 49
    .line 50
    .line 51
    move/from16 v8, p6

    .line 52
    .line 53
    invoke-direct {p0, v1, v8}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    const-string v1, "format"

    .line 57
    .line 58
    move/from16 v9, p7

    .line 59
    .line 60
    invoke-direct {p0, v1, v9}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    const-string/jumbo v1, "imageSize"

    .line 64
    .line 65
    .line 66
    move/from16 v10, p8

    .line 67
    .line 68
    invoke-direct {p0, v1, v10}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const-string v2, "data"

    .line 76
    .line 77
    invoke-direct {p0, v2, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 81
    .line 82
    .line 83
    iget-object v2, v0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 84
    .line 85
    move v3, p1

    .line 86
    move-object/from16 v11, p9

    .line 87
    .line 88
    invoke-interface/range {v2 .. v11}, Lr/a;->glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 89
    .line 90
    .line 91
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public glCopyTexImage2D(IIIIIIII)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    const-string/jumbo v1, "glCopyTexImage2D"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v1, "target"

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-direct {p0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string/jumbo v1, "level"

    .line 19
    .line 20
    .line 21
    move v4, p2

    .line 22
    invoke-direct {p0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    const-string/jumbo v1, "internalformat"

    .line 26
    .line 27
    .line 28
    move v5, p3

    .line 29
    invoke-direct {p0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    const-string/jumbo v1, "x"

    .line 33
    .line 34
    .line 35
    move v6, p4

    .line 36
    invoke-direct {p0, v1, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    const-string/jumbo v1, "y"

    .line 40
    .line 41
    .line 42
    move/from16 v7, p5

    .line 43
    .line 44
    invoke-direct {p0, v1, v7}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    const-string/jumbo v1, "width"

    .line 48
    .line 49
    .line 50
    move/from16 v8, p6

    .line 51
    .line 52
    invoke-direct {p0, v1, v8}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    const-string/jumbo v1, "height"

    .line 56
    .line 57
    .line 58
    move/from16 v9, p7

    .line 59
    .line 60
    invoke-direct {p0, v1, v9}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    const-string v1, "border"

    .line 64
    .line 65
    move/from16 v10, p8

    .line 66
    .line 67
    invoke-direct {p0, v1, v10}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 71
    .line 72
    .line 73
    iget-object v2, v0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 74
    .line 75
    move v3, p1

    .line 76
    invoke-interface/range {v2 .. v10}, Lr/a;->glCopyTexImage2D(IIIIIIII)V

    .line 77
    .line 78
    .line 79
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public glCopyTexSubImage2D(IIIIIIII)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    const-string/jumbo v1, "glCopyTexSubImage2D"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v1, "target"

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-direct {p0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string/jumbo v1, "level"

    .line 19
    .line 20
    .line 21
    move v4, p2

    .line 22
    invoke-direct {p0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    const-string/jumbo v1, "xoffset"

    .line 26
    .line 27
    .line 28
    move v5, p3

    .line 29
    invoke-direct {p0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    const-string/jumbo v1, "yoffset"

    .line 33
    .line 34
    .line 35
    move v6, p4

    .line 36
    invoke-direct {p0, v1, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    const-string/jumbo v1, "x"

    .line 40
    .line 41
    .line 42
    move/from16 v7, p5

    .line 43
    .line 44
    invoke-direct {p0, v1, v7}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    const-string/jumbo v1, "y"

    .line 48
    .line 49
    .line 50
    move/from16 v8, p6

    .line 51
    .line 52
    invoke-direct {p0, v1, v8}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    const-string/jumbo v1, "width"

    .line 56
    .line 57
    .line 58
    move/from16 v9, p7

    .line 59
    .line 60
    invoke-direct {p0, v1, v9}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    const-string/jumbo v1, "height"

    .line 64
    .line 65
    .line 66
    move/from16 v10, p8

    .line 67
    .line 68
    invoke-direct {p0, v1, v10}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 72
    .line 73
    .line 74
    iget-object v2, v0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 75
    .line 76
    move v3, p1

    .line 77
    invoke-interface/range {v2 .. v10}, Lr/a;->glCopyTexSubImage2D(IIIIIIII)V

    .line 78
    .line 79
    .line 80
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public glCullFace(I)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glCullFace"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "mode"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lr/a;->glCullFace(I)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public glCurrentPaletteMatrixOES(I)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glCurrentPaletteMatrixOES"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "matrixpaletteindex"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lr/d;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lr/d;->glCurrentPaletteMatrixOES(I)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public glDeleteBuffers(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string/jumbo v0, "glDeleteBuffers"

    .line 8
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    .line 9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 10
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "buffers"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 12
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2}, Lr/c;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDeleteBuffers(I[II)V
    .locals 2

    const-string/jumbo v0, "glDeleteBuffers"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "buffers"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glDeleteBuffers(I[II)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDeleteFramebuffersOES(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string/jumbo v0, "glDeleteFramebuffersOES"

    .line 8
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    .line 9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 10
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "framebuffers"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 12
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2}, Lr/e;->glDeleteFramebuffersOES(ILjava/nio/IntBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDeleteFramebuffersOES(I[II)V
    .locals 2

    const-string/jumbo v0, "glDeleteFramebuffersOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "framebuffers"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2, p3}, Lr/e;->glDeleteFramebuffersOES(I[II)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDeleteRenderbuffersOES(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string/jumbo v0, "glDeleteRenderbuffersOES"

    .line 8
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    .line 9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 10
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "renderbuffers"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 12
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2}, Lr/e;->glDeleteRenderbuffersOES(ILjava/nio/IntBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDeleteRenderbuffersOES(I[II)V
    .locals 2

    const-string/jumbo v0, "glDeleteRenderbuffersOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "renderbuffers"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2, p3}, Lr/e;->glDeleteRenderbuffersOES(I[II)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDeleteTextures(ILjava/nio/IntBuffer;)V
    .locals 1

    const-string/jumbo v0, "glDeleteTextures"

    .line 8
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    .line 9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "textures"

    .line 10
    invoke-direct {p0, v0, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 12
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2}, Lr/a;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDeleteTextures(I[II)V
    .locals 1

    const-string/jumbo v0, "glDeleteTextures"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "textures"

    .line 3
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string/jumbo v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3}, Lr/a;->glDeleteTextures(I[II)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDepthFunc(I)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glDepthFunc"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "func"

    .line 8
    .line 9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Lr/a;->glDepthFunc(I)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public glDepthMask(Z)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glDepthMask"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "flag"

    .line 8
    .line 9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Lr/a;->glDepthMask(Z)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public glDepthRangef(FF)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glDepthRangef"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "near"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 11
    .line 12
    .line 13
    const-string v0, "far"

    .line 14
    .line 15
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 22
    .line 23
    invoke-interface {v0, p1, p2}, Lr/a;->glDepthRangef(FF)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public glDepthRangex(II)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glDepthRangex"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "near"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string v0, "far"

    .line 14
    .line 15
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 22
    .line 23
    invoke-interface {v0, p1, p2}, Lr/a;->glDepthRangex(II)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public glDisable(I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "glDisable"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "cap"

    .line 8
    .line 9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getCap(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Lr/a;->glDisable(I)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public glDisableClientState(I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "glDisableClientState"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "array"

    .line 8
    .line 9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getClientState(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    packed-switch p1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    :pswitch_0
    goto :goto_0

    .line 24
    :pswitch_1
    iput-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :pswitch_2
    iput-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mColorArrayEnabled:Z

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :pswitch_3
    iput-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mNormalArrayEnabled:Z

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :pswitch_4
    iput-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mVertexArrayEnabled:Z

    .line 34
    .line 35
    :goto_0
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 36
    .line 37
    invoke-interface {v0, p1}, Lr/a;->glDisableClientState(I)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x8074
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public glDrawArrays(III)V
    .locals 3

    .line 1
    const-string/jumbo v0, "glDrawArrays"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "mode"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string v0, "first"

    .line 14
    .line 15
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    const-string v0, "count"

    .line 19
    .line 20
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->startLogIndices()V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    :goto_0
    if-ge v0, p3, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 30
    .line 31
    add-int v2, p2, v0

    .line 32
    .line 33
    invoke-direct {p0, v1, v0, v2}, Landroid/opengl/GLLogWrapper;->doElement(Ljava/lang/StringBuilder;II)V

    .line 34
    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->endLogIndices()V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 46
    .line 47
    invoke-interface {v0, p1, p2, p3}, Lr/a;->glDrawArrays(III)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public glDrawElements(IIII)V
    .locals 1

    const-string/jumbo v0, "glDrawElements"

    .line 13
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "mode"

    .line 14
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "count"

    .line 15
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "type"

    .line 16
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "offset"

    .line 17
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 18
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 19
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glDrawElements(IIII)V

    .line 20
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawElements(IIILjava/nio/Buffer;)V
    .locals 5

    const-string/jumbo v0, "glDrawElements"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "mode"

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getBeginMode(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "count"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "type"

    .line 4
    invoke-direct {p0, p3}, Landroid/opengl/GLLogWrapper;->getIndexType(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->toCharIndices(IILjava/nio/Buffer;)[C

    move-result-object v0

    .line 6
    array-length v1, v0

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->startLogIndices()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 8
    iget-object v3, p0, Landroid/opengl/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    aget-char v4, v0, v2

    invoke-direct {p0, v3, v2, v4}, Landroid/opengl/GLLogWrapper;->doElement(Ljava/lang/StringBuilder;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->endLogIndices()V

    .line 10
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 11
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/a;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 12
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexfOES(FFFFF)V
    .locals 7

    .line 1
    const-string/jumbo v0, "glDrawTexfOES"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "x"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "y"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 17
    .line 18
    .line 19
    const-string/jumbo v0, "z"

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 23
    .line 24
    .line 25
    const-string/jumbo v0, "width"

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 29
    .line 30
    .line 31
    const-string/jumbo v0, "height"

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lr/d;

    .line 41
    .line 42
    move v2, p1

    .line 43
    move v3, p2

    .line 44
    move v4, p3

    .line 45
    move v5, p4

    .line 46
    move v6, p5

    .line 47
    invoke-interface/range {v1 .. v6}, Lr/d;->glDrawTexfOES(FFFFF)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public glDrawTexfvOES(Ljava/nio/FloatBuffer;)V
    .locals 2

    const-string/jumbo v0, "glDrawTexfvOES"

    .line 7
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coords"

    const/4 v1, 0x5

    .line 8
    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 9
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 10
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lr/d;

    invoke-interface {v0, p1}, Lr/d;->glDrawTexfvOES(Ljava/nio/FloatBuffer;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexfvOES([FI)V
    .locals 2

    const-string/jumbo v0, "glDrawTexfvOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coords"

    const/4 v1, 0x5

    .line 2
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string/jumbo v0, "offset"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lr/d;

    invoke-interface {v0, p1, p2}, Lr/d;->glDrawTexfvOES([FI)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexiOES(IIIII)V
    .locals 7

    .line 1
    const-string/jumbo v0, "glDrawTexiOES"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "x"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "y"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    const-string/jumbo v0, "z"

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    const-string/jumbo v0, "width"

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    const-string/jumbo v0, "height"

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lr/d;

    .line 41
    .line 42
    move v2, p1

    .line 43
    move v3, p2

    .line 44
    move v4, p3

    .line 45
    move v5, p4

    .line 46
    move v6, p5

    .line 47
    invoke-interface/range {v1 .. v6}, Lr/d;->glDrawTexiOES(IIIII)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public glDrawTexivOES(Ljava/nio/IntBuffer;)V
    .locals 2

    const-string/jumbo v0, "glDrawTexivOES"

    .line 7
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coords"

    const/4 v1, 0x5

    .line 8
    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 9
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 10
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lr/d;

    invoke-interface {v0, p1}, Lr/d;->glDrawTexivOES(Ljava/nio/IntBuffer;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexivOES([II)V
    .locals 2

    const-string/jumbo v0, "glDrawTexivOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coords"

    const/4 v1, 0x5

    .line 2
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string/jumbo v0, "offset"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lr/d;

    invoke-interface {v0, p1, p2}, Lr/d;->glDrawTexivOES([II)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexsOES(SSSSS)V
    .locals 7

    .line 1
    const-string/jumbo v0, "glDrawTexsOES"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "x"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "y"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    const-string/jumbo v0, "z"

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    const-string/jumbo v0, "width"

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    const-string/jumbo v0, "height"

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lr/d;

    .line 41
    .line 42
    move v2, p1

    .line 43
    move v3, p2

    .line 44
    move v4, p3

    .line 45
    move v5, p4

    .line 46
    move v6, p5

    .line 47
    invoke-interface/range {v1 .. v6}, Lr/d;->glDrawTexsOES(SSSSS)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public glDrawTexsvOES(Ljava/nio/ShortBuffer;)V
    .locals 2

    const-string/jumbo v0, "glDrawTexsvOES"

    .line 7
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coords"

    const/4 v1, 0x5

    .line 8
    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/ShortBuffer;)V

    .line 9
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 10
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lr/d;

    invoke-interface {v0, p1}, Lr/d;->glDrawTexsvOES(Ljava/nio/ShortBuffer;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexsvOES([SI)V
    .locals 2

    const-string/jumbo v0, "glDrawTexsvOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coords"

    const/4 v1, 0x5

    .line 2
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[SI)V

    const-string/jumbo v0, "offset"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lr/d;

    invoke-interface {v0, p1, p2}, Lr/d;->glDrawTexsvOES([SI)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexxOES(IIIII)V
    .locals 7

    .line 1
    const-string/jumbo v0, "glDrawTexxOES"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "x"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "y"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    const-string/jumbo v0, "z"

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    const-string/jumbo v0, "width"

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    const-string/jumbo v0, "height"

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lr/d;

    .line 41
    .line 42
    move v2, p1

    .line 43
    move v3, p2

    .line 44
    move v4, p3

    .line 45
    move v5, p4

    .line 46
    move v6, p5

    .line 47
    invoke-interface/range {v1 .. v6}, Lr/d;->glDrawTexxOES(IIIII)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public glDrawTexxvOES(Ljava/nio/IntBuffer;)V
    .locals 2

    const-string/jumbo v0, "glDrawTexxvOES"

    .line 7
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coords"

    const/4 v1, 0x5

    .line 8
    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 9
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 10
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lr/d;

    invoke-interface {v0, p1}, Lr/d;->glDrawTexxvOES(Ljava/nio/IntBuffer;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexxvOES([II)V
    .locals 2

    const-string/jumbo v0, "glDrawTexxvOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coords"

    const/4 v1, 0x5

    .line 2
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string/jumbo v0, "offset"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lr/d;

    invoke-interface {v0, p1, p2}, Lr/d;->glDrawTexxvOES([II)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glEnable(I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "glEnable"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "cap"

    .line 8
    .line 9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getCap(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Lr/a;->glEnable(I)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public glEnableClientState(I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "glEnableClientState"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "array"

    .line 8
    .line 9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getClientState(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    packed-switch p1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    :pswitch_0
    goto :goto_0

    .line 24
    :pswitch_1
    iput-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :pswitch_2
    iput-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mColorArrayEnabled:Z

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :pswitch_3
    iput-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mNormalArrayEnabled:Z

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :pswitch_4
    iput-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mVertexArrayEnabled:Z

    .line 34
    .line 35
    :goto_0
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 36
    .line 37
    invoke-interface {v0, p1}, Lr/a;->glEnableClientState(I)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x8074
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public glFinish()V
    .locals 1

    .line 1
    const-string/jumbo v0, "glFinish"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 11
    .line 12
    invoke-interface {v0}, Lr/a;->glFinish()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public glFlush()V
    .locals 1

    .line 1
    const-string/jumbo v0, "glFlush"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 11
    .line 12
    invoke-interface {v0}, Lr/a;->glFlush()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public glFogf(IF)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glFogf"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "pname"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "param"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 23
    .line 24
    invoke-interface {v0, p1, p2}, Lr/a;->glFogf(IF)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public glFogfv(ILjava/nio/FloatBuffer;)V
    .locals 2

    const-string/jumbo v0, "glFogfv"

    .line 8
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    .line 9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    .line 10
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 12
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2}, Lr/a;->glFogfv(ILjava/nio/FloatBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFogfv(I[FI)V
    .locals 2

    const-string/jumbo v0, "glFogfv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    .line 3
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string/jumbo v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3}, Lr/a;->glFogfv(I[FI)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFogx(II)V
    .locals 2

    .line 1
    const-string/jumbo v0, "glFogx"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "pname"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string/jumbo v0, "param"

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 27
    .line 28
    invoke-interface {v0, p1, p2}, Lr/a;->glFogx(II)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public glFogxv(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string/jumbo v0, "glFogxv"

    .line 8
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    .line 9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    .line 10
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 12
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2}, Lr/a;->glFogxv(ILjava/nio/IntBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFogxv(I[II)V
    .locals 2

    const-string/jumbo v0, "glFogxv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    .line 3
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string/jumbo v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3}, Lr/a;->glFogxv(I[II)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFramebufferRenderbufferOES(IIII)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glFramebufferRenderbufferOES"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "target"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string v0, "attachment"

    .line 14
    .line 15
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    const-string/jumbo v0, "renderbuffertarget"

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    const-string/jumbo v0, "renderbuffer"

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    .line 34
    .line 35
    invoke-interface {v0, p1, p2, p3, p4}, Lr/e;->glFramebufferRenderbufferOES(IIII)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public glFramebufferTexture2DOES(IIIII)V
    .locals 7

    .line 1
    const-string/jumbo v0, "glFramebufferTexture2DOES"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "target"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string v0, "attachment"

    .line 14
    .line 15
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    const-string/jumbo v0, "textarget"

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    const-string/jumbo v0, "texture"

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    const-string/jumbo v0, "level"

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    .line 40
    .line 41
    move v2, p1

    .line 42
    move v3, p2

    .line 43
    move v4, p3

    .line 44
    move v5, p4

    .line 45
    move v6, p5

    .line 46
    invoke-interface/range {v1 .. v6}, Lr/e;->glFramebufferTexture2DOES(IIIII)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public glFrontFace(I)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glFrontFace"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "mode"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lr/a;->glFrontFace(I)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public glFrustumf(FFFFFF)V
    .locals 8

    .line 1
    const-string/jumbo v0, "glFrustumf"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "left"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "right"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 17
    .line 18
    .line 19
    const-string v0, "bottom"

    .line 20
    .line 21
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 22
    .line 23
    .line 24
    const-string/jumbo v0, "top"

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 28
    .line 29
    .line 30
    const-string/jumbo v0, "near"

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 34
    .line 35
    .line 36
    const-string v0, "far"

    .line 37
    .line 38
    invoke-direct {p0, v0, p6}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 45
    .line 46
    move v2, p1

    .line 47
    move v3, p2

    .line 48
    move v4, p3

    .line 49
    move v5, p4

    .line 50
    move v6, p5

    .line 51
    move v7, p6

    .line 52
    invoke-interface/range {v1 .. v7}, Lr/a;->glFrustumf(FFFFFF)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public glFrustumx(IIIIII)V
    .locals 8

    .line 1
    const-string/jumbo v0, "glFrustumx"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "left"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "right"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    const-string v0, "bottom"

    .line 20
    .line 21
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    const-string/jumbo v0, "top"

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    const-string/jumbo v0, "near"

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    const-string v0, "far"

    .line 37
    .line 38
    invoke-direct {p0, v0, p6}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 45
    .line 46
    move v2, p1

    .line 47
    move v3, p2

    .line 48
    move v4, p3

    .line 49
    move v5, p4

    .line 50
    move v6, p5

    .line 51
    move v7, p6

    .line 52
    invoke-interface/range {v1 .. v7}, Lr/a;->glFrustumx(IIIIII)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public glGenBuffers(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string/jumbo v0, "glGenBuffers"

    .line 8
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    .line 9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 10
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "buffers"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 12
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2}, Lr/c;->glGenBuffers(ILjava/nio/IntBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGenBuffers(I[II)V
    .locals 2

    const-string/jumbo v0, "glGenBuffers"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "buffers"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glGenBuffers(I[II)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGenFramebuffersOES(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string/jumbo v0, "glGenFramebuffersOES"

    .line 8
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    .line 9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 10
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "framebuffers"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 12
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2}, Lr/e;->glGenFramebuffersOES(ILjava/nio/IntBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGenFramebuffersOES(I[II)V
    .locals 2

    const-string/jumbo v0, "glGenFramebuffersOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "framebuffers"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2, p3}, Lr/e;->glGenFramebuffersOES(I[II)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGenRenderbuffersOES(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string/jumbo v0, "glGenRenderbuffersOES"

    .line 8
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    .line 9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 10
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "renderbuffers"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 12
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2}, Lr/e;->glGenRenderbuffersOES(ILjava/nio/IntBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGenRenderbuffersOES(I[II)V
    .locals 2

    const-string/jumbo v0, "glGenRenderbuffersOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "renderbuffers"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2, p3}, Lr/e;->glGenRenderbuffersOES(I[II)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGenTextures(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string/jumbo v0, "glGenTextures"

    .line 8
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    .line 9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 10
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "textures"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2}, Lr/a;->glGenTextures(ILjava/nio/IntBuffer;)V

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, v0, p2}, Landroid/opengl/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGenTextures(I[II)V
    .locals 2

    const-string/jumbo v0, "glGenTextures"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "textures"

    .line 3
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3}, Lr/a;->glGenTextures(I[II)V

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0, p2, p3}, Landroid/opengl/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGenerateMipmapOES(I)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glGenerateMipmapOES"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "target"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lr/e;->glGenerateMipmapOES(I)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public glGetBooleanv(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string/jumbo v0, "glGetBooleanv"

    .line 8
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    .line 9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 10
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 12
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2}, Lr/c;->glGetBooleanv(ILjava/nio/IntBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetBooleanv(I[ZI)V
    .locals 2

    const-string/jumbo v0, "glGetBooleanv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glGetBooleanv(I[ZI)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetBufferParameteriv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string/jumbo v0, "glGetBufferParameteriv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glGetBufferParameteriv(IILjava/nio/IntBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetBufferParameteriv(II[II)V
    .locals 2

    const-string/jumbo v0, "glGetBufferParameteriv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glGetBufferParameteriv(II[II)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 2

    const-string/jumbo v0, "glGetClipPlanef"

    .line 8
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    .line 9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 10
    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "eqn"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 12
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2}, Lr/c;->glGetClipPlanef(ILjava/nio/FloatBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetClipPlanef(I[FI)V
    .locals 2

    const-string/jumbo v0, "glGetClipPlanef"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "eqn"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glGetClipPlanef(I[FI)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetClipPlanex(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string/jumbo v0, "glGetClipPlanex"

    .line 7
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    .line 8
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 9
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "eqn"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 11
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2}, Lr/c;->glGetClipPlanex(ILjava/nio/IntBuffer;)V

    .line 12
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetClipPlanex(I[II)V
    .locals 2

    const-string/jumbo v0, "glGetClipPlanex"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "eqn"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glGetClipPlanex(I[II)V

    return-void
.end method

.method public glGetError()I
    .locals 1

    .line 1
    const-string/jumbo v0, "glGetError"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 8
    .line 9
    invoke-interface {v0}, Lr/a;->glGetError()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->returns(I)V

    .line 14
    .line 15
    .line 16
    return v0
.end method

.method public glGetFixedv(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string/jumbo v0, "glGetFixedv"

    .line 7
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    .line 8
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 9
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 11
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2}, Lr/c;->glGetFixedv(ILjava/nio/IntBuffer;)V

    .line 12
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetFixedv(I[II)V
    .locals 2

    const-string/jumbo v0, "glGetFixedv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glGetFixedv(I[II)V

    return-void
.end method

.method public glGetFloatv(ILjava/nio/FloatBuffer;)V
    .locals 2

    const-string/jumbo v0, "glGetFloatv"

    .line 7
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    .line 8
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 9
    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 11
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2}, Lr/c;->glGetFloatv(ILjava/nio/FloatBuffer;)V

    .line 12
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetFloatv(I[FI)V
    .locals 2

    const-string/jumbo v0, "glGetFloatv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glGetFloatv(I[FI)V

    return-void
.end method

.method public glGetFramebufferAttachmentParameterivOES(IIILjava/nio/IntBuffer;)V
    .locals 2

    const-string/jumbo v0, "glGetFramebufferAttachmentParameterivOES"

    .line 10
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 11
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "attachment"

    .line 12
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 13
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 14
    invoke-virtual {p4}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 16
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/e;->glGetFramebufferAttachmentParameterivOES(IIILjava/nio/IntBuffer;)V

    .line 17
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetFramebufferAttachmentParameterivOES(III[II)V
    .locals 7

    const-string/jumbo v0, "glGetFramebufferAttachmentParameterivOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "attachment"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    .line 6
    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 8
    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lr/e;->glGetFramebufferAttachmentParameterivOES(III[II)V

    .line 9
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetIntegerv(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string/jumbo v0, "glGetIntegerv"

    .line 10
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    .line 11
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2}, Lr/a;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 14
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateSize(I)I

    move-result v0

    .line 15
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateFormat(I)I

    move-result p1

    .line 16
    invoke-direct {p0, v0, p1, p2}, Landroid/opengl/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetIntegerv(I[II)V
    .locals 2

    const-string/jumbo v0, "glGetIntegerv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    .line 3
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3}, Lr/a;->glGetIntegerv(I[II)V

    .line 6
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateSize(I)I

    move-result v0

    .line 7
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateFormat(I)I

    move-result p1

    .line 8
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/opengl/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetLightfv(IILjava/nio/FloatBuffer;)V
    .locals 2

    const-string/jumbo v0, "glGetLightfv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "light"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glGetLightfv(IILjava/nio/FloatBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetLightfv(II[FI)V
    .locals 2

    const-string/jumbo v0, "glGetLightfv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "light"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glGetLightfv(II[FI)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetLightxv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string/jumbo v0, "glGetLightxv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "light"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glGetLightxv(IILjava/nio/IntBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetLightxv(II[II)V
    .locals 2

    const-string/jumbo v0, "glGetLightxv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "light"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glGetLightxv(II[II)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 2

    const-string/jumbo v0, "glGetMaterialfv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "face"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glGetMaterialfv(IILjava/nio/FloatBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetMaterialfv(II[FI)V
    .locals 2

    const-string/jumbo v0, "glGetMaterialfv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "face"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glGetMaterialfv(II[FI)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetMaterialxv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string/jumbo v0, "glGetMaterialxv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "face"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glGetMaterialxv(IILjava/nio/IntBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetMaterialxv(II[II)V
    .locals 2

    const-string/jumbo v0, "glGetMaterialxv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "face"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glGetMaterialxv(II[II)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetPointerv(I[Ljava/nio/Buffer;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "glGetPointerv"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "pname"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string/jumbo v1, "params"

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    .line 27
    .line 28
    invoke-interface {v0, p1, p2}, Lr/c;->glGetPointerv(I[Ljava/nio/Buffer;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public glGetRenderbufferParameterivOES(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string/jumbo v0, "glGetRenderbufferParameterivOES"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2, p3}, Lr/e;->glGetRenderbufferParameterivOES(IILjava/nio/IntBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetRenderbufferParameterivOES(II[II)V
    .locals 2

    const-string/jumbo v0, "glGetRenderbufferParameterivOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/e;->glGetRenderbufferParameterivOES(II[II)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetString(I)Ljava/lang/String;
    .locals 1

    .line 1
    const-string/jumbo v0, "glGetString"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "name"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Lr/a;->glGetString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 23
    .line 24
    .line 25
    return-object p1
.end method

.method public glGetTexEnviv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string/jumbo v0, "glGetTexEnviv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "env"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glGetTexEnviv(IILjava/nio/IntBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexEnviv(II[II)V
    .locals 2

    const-string/jumbo v0, "glGetTexEnviv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "env"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glGetTexEnviv(II[II)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexEnvxv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string/jumbo v0, "glGetTexEnviv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "env"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glGetTexEnvxv(IILjava/nio/IntBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexEnvxv(II[II)V
    .locals 2

    const-string/jumbo v0, "glGetTexEnviv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "env"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glGetTexEnviv(II[II)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexGenfv(IILjava/nio/FloatBuffer;)V
    .locals 2

    const-string/jumbo v0, "glGetTexGenfv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2, p3}, Lr/e;->glGetTexGenfv(IILjava/nio/FloatBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexGenfv(II[FI)V
    .locals 2

    const-string/jumbo v0, "glGetTexGenfv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/e;->glGetTexGenfv(II[FI)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexGeniv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string/jumbo v0, "glGetTexGeniv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2, p3}, Lr/e;->glGetTexGeniv(IILjava/nio/IntBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexGeniv(II[II)V
    .locals 2

    const-string/jumbo v0, "glGetTexGeniv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/e;->glGetTexGeniv(II[II)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexGenxv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string/jumbo v0, "glGetTexGenxv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2, p3}, Lr/e;->glGetTexGenxv(IILjava/nio/IntBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexGenxv(II[II)V
    .locals 2

    const-string/jumbo v0, "glGetTexGenxv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/e;->glGetTexGenxv(II[II)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 2

    const-string/jumbo v0, "glGetTexParameterfv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glGetTexParameterfv(IILjava/nio/FloatBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameterfv(II[FI)V
    .locals 2

    const-string/jumbo v0, "glGetTexParameterfv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glGetTexParameterfv(II[FI)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string/jumbo v0, "glGetTexParameteriv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glGetTexParameteriv(IILjava/nio/IntBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameteriv(II[II)V
    .locals 2

    const-string/jumbo v0, "glGetTexParameteriv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glGetTexEnviv(II[II)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameterxv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string/jumbo v0, "glGetTexParameterxv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glGetTexParameterxv(IILjava/nio/IntBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameterxv(II[II)V
    .locals 2

    const-string/jumbo v0, "glGetTexParameterxv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glGetTexParameterxv(II[II)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glHint(II)V
    .locals 2

    .line 1
    const-string/jumbo v0, "glHint"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "target"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getHintTarget(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string/jumbo v0, "mode"

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getHintMode(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 31
    .line 32
    invoke-interface {v0, p1, p2}, Lr/a;->glHint(II)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public glIsBuffer(I)Z
    .locals 1

    .line 1
    const-string/jumbo v0, "glIsBuffer"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "buffer"

    .line 8
    .line 9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Lr/c;->glIsBuffer(I)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 22
    .line 23
    .line 24
    return p1
.end method

.method public glIsEnabled(I)Z
    .locals 1

    .line 1
    const-string/jumbo v0, "glIsEnabled"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "cap"

    .line 8
    .line 9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Lr/c;->glIsEnabled(I)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 22
    .line 23
    .line 24
    return p1
.end method

.method public glIsFramebufferOES(I)Z
    .locals 1

    .line 1
    const-string/jumbo v0, "glIsFramebufferOES"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "framebuffer"

    .line 8
    .line 9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Lr/e;->glIsFramebufferOES(I)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 22
    .line 23
    .line 24
    return p1
.end method

.method public glIsRenderbufferOES(I)Z
    .locals 1

    .line 1
    const-string/jumbo v0, "glIsRenderbufferOES"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "renderbuffer"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lr/e;->glIsRenderbufferOES(I)Z

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    return p1
.end method

.method public glIsTexture(I)Z
    .locals 1

    .line 1
    const-string/jumbo v0, "glIsTexture"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "texture"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lr/c;->glIsTexture(I)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 23
    .line 24
    .line 25
    return p1
.end method

.method public glLightModelf(IF)V
    .locals 2

    .line 1
    const-string/jumbo v0, "glLightModelf"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "pname"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string/jumbo v0, "param"

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 27
    .line 28
    invoke-interface {v0, p1, p2}, Lr/a;->glLightModelf(IF)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public glLightModelfv(ILjava/nio/FloatBuffer;)V
    .locals 2

    const-string/jumbo v0, "glLightModelfv"

    .line 8
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    .line 9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    .line 10
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 12
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2}, Lr/a;->glLightModelfv(ILjava/nio/FloatBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightModelfv(I[FI)V
    .locals 2

    const-string/jumbo v0, "glLightModelfv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    .line 3
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string/jumbo v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3}, Lr/a;->glLightModelfv(I[FI)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightModelx(II)V
    .locals 2

    .line 1
    const-string/jumbo v0, "glLightModelx"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "pname"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string/jumbo v0, "param"

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 27
    .line 28
    invoke-interface {v0, p1, p2}, Lr/a;->glLightModelx(II)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public glLightModelxv(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string/jumbo v0, "glLightModelfv"

    .line 8
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    .line 9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    .line 10
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 12
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2}, Lr/a;->glLightModelxv(ILjava/nio/IntBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightModelxv(I[II)V
    .locals 2

    const-string/jumbo v0, "glLightModelxv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    .line 3
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string/jumbo v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3}, Lr/a;->glLightModelxv(I[II)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightf(IIF)V
    .locals 2

    .line 1
    const-string/jumbo v0, "glLightf"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "light"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string/jumbo v0, "pname"

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string/jumbo v0, "param"

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 37
    .line 38
    invoke-interface {v0, p1, p2, p3}, Lr/a;->glLightf(IIF)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public glLightfv(IILjava/nio/FloatBuffer;)V
    .locals 2

    const-string/jumbo v0, "glLightfv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "light"

    .line 10
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    .line 11
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    .line 12
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3}, Lr/a;->glLightfv(IILjava/nio/FloatBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightfv(II[FI)V
    .locals 2

    const-string/jumbo v0, "glLightfv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "light"

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    .line 3
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    .line 4
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string/jumbo v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/a;->glLightfv(II[FI)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightx(III)V
    .locals 2

    .line 1
    const-string/jumbo v0, "glLightx"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "light"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string/jumbo v0, "pname"

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string/jumbo v0, "param"

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 37
    .line 38
    invoke-interface {v0, p1, p2, p3}, Lr/a;->glLightx(III)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public glLightxv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string/jumbo v0, "glLightxv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "light"

    .line 10
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    .line 11
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    .line 12
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3}, Lr/a;->glLightxv(IILjava/nio/IntBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightxv(II[II)V
    .locals 2

    const-string/jumbo v0, "glLightxv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "light"

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    .line 3
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    .line 4
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string/jumbo v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/a;->glLightxv(II[II)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLineWidth(F)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glLineWidth"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "width"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lr/a;->glLineWidth(F)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public glLineWidthx(I)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glLineWidthx"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "width"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lr/a;->glLineWidthx(I)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public glLoadIdentity()V
    .locals 1

    .line 1
    const-string/jumbo v0, "glLoadIdentity"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 11
    .line 12
    invoke-interface {v0}, Lr/a;->glLoadIdentity()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public glLoadMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 2

    const-string/jumbo v0, "glLoadMatrixf"

    .line 7
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "m"

    const/16 v1, 0x10

    .line 8
    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 9
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 10
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1}, Lr/a;->glLoadMatrixf(Ljava/nio/FloatBuffer;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLoadMatrixf([FI)V
    .locals 2

    const-string/jumbo v0, "glLoadMatrixf"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "m"

    const/16 v1, 0x10

    .line 2
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string/jumbo v0, "offset"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2}, Lr/a;->glLoadMatrixf([FI)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLoadMatrixx(Ljava/nio/IntBuffer;)V
    .locals 2

    const-string/jumbo v0, "glLoadMatrixx"

    .line 7
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "m"

    const/16 v1, 0x10

    .line 8
    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 9
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 10
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1}, Lr/a;->glLoadMatrixx(Ljava/nio/IntBuffer;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLoadMatrixx([II)V
    .locals 2

    const-string/jumbo v0, "glLoadMatrixx"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "m"

    const/16 v1, 0x10

    .line 2
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string/jumbo v0, "offset"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2}, Lr/a;->glLoadMatrixx([II)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLoadPaletteFromModelViewMatrixOES()V
    .locals 1

    .line 1
    const-string/jumbo v0, "glLoadPaletteFromModelViewMatrixOES"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lr/d;

    .line 11
    .line 12
    invoke-interface {v0}, Lr/d;->glLoadPaletteFromModelViewMatrixOES()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public glLogicOp(I)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glLogicOp"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "opcode"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lr/a;->glLogicOp(I)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public glMaterialf(IIF)V
    .locals 2

    .line 1
    const-string/jumbo v0, "glMaterialf"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "face"

    .line 8
    .line 9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string/jumbo v0, "pname"

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string/jumbo v0, "param"

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 36
    .line 37
    invoke-interface {v0, p1, p2, p3}, Lr/a;->glMaterialf(IIF)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public glMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 2

    const-string/jumbo v0, "glMaterialfv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "face"

    .line 10
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    .line 11
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    .line 12
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3}, Lr/a;->glMaterialfv(IILjava/nio/FloatBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMaterialfv(II[FI)V
    .locals 2

    const-string/jumbo v0, "glMaterialfv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "face"

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    .line 3
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    .line 4
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string/jumbo v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/a;->glMaterialfv(II[FI)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMaterialx(III)V
    .locals 2

    .line 1
    const-string/jumbo v0, "glMaterialx"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "face"

    .line 8
    .line 9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string/jumbo v0, "pname"

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string/jumbo v0, "param"

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 36
    .line 37
    invoke-interface {v0, p1, p2, p3}, Lr/a;->glMaterialx(III)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public glMaterialxv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string/jumbo v0, "glMaterialxv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "face"

    .line 10
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    .line 11
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    .line 12
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3}, Lr/a;->glMaterialxv(IILjava/nio/IntBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMaterialxv(II[II)V
    .locals 2

    const-string/jumbo v0, "glMaterialxv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "face"

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    .line 3
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    .line 4
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string/jumbo v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/a;->glMaterialxv(II[II)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMatrixIndexPointerOES(IIII)V
    .locals 1

    const-string/jumbo v0, "glMatrixIndexPointerOES"

    .line 6
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "size"

    .line 7
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "type"

    .line 8
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "stride"

    .line 9
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "offset"

    .line 10
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 12
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lr/d;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/d;->glMatrixIndexPointerOES(IIII)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMatrixIndexPointerOES(IIILjava/nio/Buffer;)V
    .locals 1

    const-string/jumbo v0, "glMatrixIndexPointerOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->argPointer(IIILjava/nio/Buffer;)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lr/d;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/d;->glMatrixIndexPointerOES(IIILjava/nio/Buffer;)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMatrixMode(I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "glMatrixMode"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "mode"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getMatrixMode(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 21
    .line 22
    invoke-interface {v0, p1}, Lr/a;->glMatrixMode(I)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public glMultMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 2

    const-string/jumbo v0, "glMultMatrixf"

    .line 7
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "m"

    const/16 v1, 0x10

    .line 8
    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 9
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 10
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1}, Lr/a;->glMultMatrixf(Ljava/nio/FloatBuffer;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMultMatrixf([FI)V
    .locals 2

    const-string/jumbo v0, "glMultMatrixf"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "m"

    const/16 v1, 0x10

    .line 2
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string/jumbo v0, "offset"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2}, Lr/a;->glMultMatrixf([FI)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMultMatrixx(Ljava/nio/IntBuffer;)V
    .locals 2

    const-string/jumbo v0, "glMultMatrixx"

    .line 7
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "m"

    const/16 v1, 0x10

    .line 8
    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 9
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 10
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1}, Lr/a;->glMultMatrixx(Ljava/nio/IntBuffer;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMultMatrixx([II)V
    .locals 2

    const-string/jumbo v0, "glMultMatrixx"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "m"

    const/16 v1, 0x10

    .line 2
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string/jumbo v0, "offset"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2}, Lr/a;->glMultMatrixx([II)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMultiTexCoord4f(IFFFF)V
    .locals 7

    .line 1
    const-string/jumbo v0, "glMultiTexCoord4f"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "target"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "s"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 17
    .line 18
    .line 19
    const-string/jumbo v0, "t"

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 23
    .line 24
    .line 25
    const-string/jumbo v0, "r"

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 29
    .line 30
    .line 31
    const-string/jumbo v0, "q"

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 41
    .line 42
    move v2, p1

    .line 43
    move v3, p2

    .line 44
    move v4, p3

    .line 45
    move v5, p4

    .line 46
    move v6, p5

    .line 47
    invoke-interface/range {v1 .. v6}, Lr/a;->glMultiTexCoord4f(IFFFF)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public glMultiTexCoord4x(IIIII)V
    .locals 7

    .line 1
    const-string/jumbo v0, "glMultiTexCoord4x"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "target"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "s"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    const-string/jumbo v0, "t"

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    const-string/jumbo v0, "r"

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    const-string/jumbo v0, "q"

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 41
    .line 42
    move v2, p1

    .line 43
    move v3, p2

    .line 44
    move v4, p3

    .line 45
    move v5, p4

    .line 46
    move v6, p5

    .line 47
    invoke-interface/range {v1 .. v6}, Lr/a;->glMultiTexCoord4x(IIIII)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public glNormal3f(FFF)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glNormal3f"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "nx"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "ny"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 17
    .line 18
    .line 19
    const-string/jumbo v0, "nz"

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 29
    .line 30
    invoke-interface {v0, p1, p2, p3}, Lr/a;->glNormal3f(FFF)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public glNormal3x(III)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glNormal3x"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "nx"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "ny"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    const-string/jumbo v0, "nz"

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 29
    .line 30
    invoke-interface {v0, p1, p2, p3}, Lr/a;->glNormal3x(III)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public glNormalPointer(III)V
    .locals 1

    const-string/jumbo v0, "glNormalPointer"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "stride"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "offset"

    .line 12
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glNormalPointer(III)V

    return-void
.end method

.method public glNormalPointer(IILjava/nio/Buffer;)V
    .locals 8

    const-string/jumbo v0, "glNormalPointer"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "stride"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pointer"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    new-instance v0, Landroid/opengl/GLLogWrapper$PointerInfo;

    const/4 v4, 0x3

    move-object v2, v0

    move-object v3, p0

    move v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;IIILjava/nio/Buffer;)V

    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mNormalPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3}, Lr/a;->glNormalPointer(IILjava/nio/Buffer;)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glOrthof(FFFFFF)V
    .locals 8

    .line 1
    const-string/jumbo v0, "glOrthof"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "left"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "right"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 17
    .line 18
    .line 19
    const-string v0, "bottom"

    .line 20
    .line 21
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 22
    .line 23
    .line 24
    const-string/jumbo v0, "top"

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 28
    .line 29
    .line 30
    const-string/jumbo v0, "near"

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 34
    .line 35
    .line 36
    const-string v0, "far"

    .line 37
    .line 38
    invoke-direct {p0, v0, p6}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 45
    .line 46
    move v2, p1

    .line 47
    move v3, p2

    .line 48
    move v4, p3

    .line 49
    move v5, p4

    .line 50
    move v6, p5

    .line 51
    move v7, p6

    .line 52
    invoke-interface/range {v1 .. v7}, Lr/a;->glOrthof(FFFFFF)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public glOrthox(IIIIII)V
    .locals 8

    .line 1
    const-string/jumbo v0, "glOrthox"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "left"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "right"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    const-string v0, "bottom"

    .line 20
    .line 21
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    const-string/jumbo v0, "top"

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    const-string/jumbo v0, "near"

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    const-string v0, "far"

    .line 37
    .line 38
    invoke-direct {p0, v0, p6}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 45
    .line 46
    move v2, p1

    .line 47
    move v3, p2

    .line 48
    move v4, p3

    .line 49
    move v5, p4

    .line 50
    move v6, p5

    .line 51
    move v7, p6

    .line 52
    invoke-interface/range {v1 .. v7}, Lr/a;->glOrthox(IIIIII)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public glPixelStorei(II)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glPixelStorei"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "pname"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "param"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 23
    .line 24
    invoke-interface {v0, p1, p2}, Lr/a;->glPixelStorei(II)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public glPointParameterf(IF)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glPointParameterf"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "pname"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "param"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    .line 23
    .line 24
    invoke-interface {v0, p1, p2}, Lr/c;->glPointParameterf(IF)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public glPointParameterfv(ILjava/nio/FloatBuffer;)V
    .locals 2

    const-string/jumbo v0, "glPointParameterfv"

    .line 8
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    .line 9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 10
    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 12
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2}, Lr/c;->glPointParameterfv(ILjava/nio/FloatBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPointParameterfv(I[FI)V
    .locals 2

    const-string/jumbo v0, "glPointParameterfv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glPointParameterfv(I[FI)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPointParameterx(II)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glPointParameterfv"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "pname"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "param"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    .line 23
    .line 24
    invoke-interface {v0, p1, p2}, Lr/c;->glPointParameterx(II)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public glPointParameterxv(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string/jumbo v0, "glPointParameterxv"

    .line 8
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    .line 9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 10
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 12
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2}, Lr/c;->glPointParameterxv(ILjava/nio/IntBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPointParameterxv(I[II)V
    .locals 2

    const-string/jumbo v0, "glPointParameterxv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glPointParameterxv(I[II)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPointSize(F)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glPointSize"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "size"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lr/a;->glPointSize(F)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public glPointSizePointerOES(IILjava/nio/Buffer;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "glPointSizePointerOES"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "type"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "stride"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string/jumbo v1, "params"

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    .line 33
    .line 34
    invoke-interface {v0, p1, p2, p3}, Lr/c;->glPointSizePointerOES(IILjava/nio/Buffer;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public glPointSizex(I)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glPointSizex"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "size"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lr/a;->glPointSizex(I)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public glPolygonOffset(FF)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glPolygonOffset"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "factor"

    .line 8
    .line 9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v0, "units"

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 22
    .line 23
    invoke-interface {v0, p1, p2}, Lr/a;->glPolygonOffset(FF)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public glPolygonOffsetx(II)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glPolygonOffsetx"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "factor"

    .line 8
    .line 9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v0, "units"

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 22
    .line 23
    invoke-interface {v0, p1, p2}, Lr/a;->glPolygonOffsetx(II)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public glPopMatrix()V
    .locals 1

    .line 1
    const-string/jumbo v0, "glPopMatrix"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 11
    .line 12
    invoke-interface {v0}, Lr/a;->glPopMatrix()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public glPushMatrix()V
    .locals 1

    .line 1
    const-string/jumbo v0, "glPushMatrix"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 11
    .line 12
    invoke-interface {v0}, Lr/a;->glPushMatrix()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I
    .locals 3

    const-string/jumbo v0, "glQueryMatrixxOES"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mantissa"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exponent"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 13
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl10Ext:Lr/b;

    invoke-interface {v0, p1, p2}, Lr/b;->glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x10

    .line 14
    invoke-direct {p0, v2, v1, p1}, Landroid/opengl/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 15
    invoke-direct {p0, v2, p1, p2}, Landroid/opengl/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return v0
.end method

.method public glQueryMatrixxOES([II[II)I
    .locals 3

    const-string/jumbo v0, "glQueryMatrixxOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "mantissa"

    .line 2
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "exponent"

    .line 3
    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl10Ext:Lr/b;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/b;->glQueryMatrixxOES([II[II)I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x10

    .line 6
    invoke-direct {p0, v2, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, v2, p1, p3, p4}, Landroid/opengl/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return v0
.end method

.method public glReadPixels(IIIIIILjava/nio/Buffer;)V
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    const-string/jumbo v1, "glReadPixels"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v1, "x"

    .line 9
    .line 10
    .line 11
    move v3, p1

    .line 12
    invoke-direct {p0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    const-string/jumbo v1, "y"

    .line 16
    .line 17
    .line 18
    move v4, p2

    .line 19
    invoke-direct {p0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    const-string/jumbo v1, "width"

    .line 23
    .line 24
    .line 25
    move v5, p3

    .line 26
    invoke-direct {p0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    const-string/jumbo v1, "height"

    .line 30
    .line 31
    .line 32
    move v6, p4

    .line 33
    invoke-direct {p0, v1, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    const-string v1, "format"

    .line 37
    .line 38
    move v7, p5

    .line 39
    invoke-direct {p0, v1, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    const-string/jumbo v1, "type"

    .line 43
    .line 44
    .line 45
    move/from16 v8, p6

    .line 46
    .line 47
    invoke-direct {p0, v1, v8}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string/jumbo v2, "pixels"

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, v2, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 61
    .line 62
    .line 63
    iget-object v2, v0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 64
    .line 65
    move-object/from16 v9, p7

    .line 66
    .line 67
    invoke-interface/range {v2 .. v9}, Lr/a;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 68
    .line 69
    .line 70
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public glRenderbufferStorageOES(IIII)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glRenderbufferStorageOES"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "target"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "internalformat"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    const-string/jumbo v0, "width"

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    const-string/jumbo v0, "height"

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    .line 35
    .line 36
    invoke-interface {v0, p1, p2, p3, p4}, Lr/e;->glRenderbufferStorageOES(IIII)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public glRotatef(FFFF)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glRotatef"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "angle"

    .line 8
    .line 9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v0, "x"

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 16
    .line 17
    .line 18
    const-string/jumbo v0, "y"

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 22
    .line 23
    .line 24
    const-string/jumbo v0, "z"

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 34
    .line 35
    invoke-interface {v0, p1, p2, p3, p4}, Lr/a;->glRotatef(FFFF)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public glRotatex(IIII)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glRotatex"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "angle"

    .line 8
    .line 9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v0, "x"

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    const-string/jumbo v0, "y"

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    const-string/jumbo v0, "z"

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 34
    .line 35
    invoke-interface {v0, p1, p2, p3, p4}, Lr/a;->glRotatex(IIII)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public glSampleCoverage(FZ)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glSampleCoveragex"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "value"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "invert"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 23
    .line 24
    invoke-interface {v0, p1, p2}, Lr/a;->glSampleCoverage(FZ)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public glSampleCoveragex(IZ)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glSampleCoveragex"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "value"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "invert"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 23
    .line 24
    invoke-interface {v0, p1, p2}, Lr/a;->glSampleCoveragex(IZ)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public glScalef(FFF)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glScalef"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "x"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "y"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 17
    .line 18
    .line 19
    const-string/jumbo v0, "z"

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 29
    .line 30
    invoke-interface {v0, p1, p2, p3}, Lr/a;->glScalef(FFF)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public glScalex(III)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glScalex"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "x"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "y"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    const-string/jumbo v0, "z"

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 29
    .line 30
    invoke-interface {v0, p1, p2, p3}, Lr/a;->glScalex(III)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public glScissor(IIII)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glScissor"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "x"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "y"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    const-string/jumbo v0, "width"

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    const-string/jumbo v0, "height"

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 35
    .line 36
    invoke-interface {v0, p1, p2, p3, p4}, Lr/a;->glScissor(IIII)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public glShadeModel(I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "glShadeModel"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "mode"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getShadeModel(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 21
    .line 22
    invoke-interface {v0, p1}, Lr/a;->glShadeModel(I)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public glStencilFunc(III)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glStencilFunc"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "func"

    .line 8
    .line 9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v0, "ref"

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    const-string/jumbo v0, "mask"

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 28
    .line 29
    invoke-interface {v0, p1, p2, p3}, Lr/a;->glStencilFunc(III)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public glStencilMask(I)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glStencilMask"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "mask"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lr/a;->glStencilMask(I)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public glStencilOp(III)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glStencilOp"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "fail"

    .line 8
    .line 9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v0, "zfail"

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    const-string/jumbo v0, "zpass"

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 28
    .line 29
    invoke-interface {v0, p1, p2, p3}, Lr/a;->glStencilOp(III)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public glTexCoordPointer(IIII)V
    .locals 1

    const-string/jumbo v0, "glTexCoordPointer"

    .line 7
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "size"

    .line 8
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "type"

    .line 9
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "stride"

    .line 10
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "offset"

    .line 11
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 13
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glTexCoordPointer(IIII)V

    return-void
.end method

.method public glTexCoordPointer(IIILjava/nio/Buffer;)V
    .locals 7

    const-string/jumbo v0, "glTexCoordPointer"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->argPointer(IIILjava/nio/Buffer;)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 4
    new-instance v0, Landroid/opengl/GLLogWrapper$PointerInfo;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;IIILjava/nio/Buffer;)V

    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mTexCoordPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/a;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvf(IIF)V
    .locals 2

    .line 1
    const-string/jumbo v0, "glTexEnvf"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "target"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string/jumbo v0, "pname"

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string/jumbo v0, "param"

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p3}, Landroid/opengl/GLLogWrapper;->getTextureEnvParamName(F)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 41
    .line 42
    invoke-interface {v0, p1, p2, p3}, Lr/a;->glTexEnvf(IIF)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public glTexEnvfv(IILjava/nio/FloatBuffer;)V
    .locals 2

    const-string/jumbo v0, "glTexEnvfv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 10
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    .line 11
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    .line 12
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3}, Lr/a;->glTexEnvfv(IILjava/nio/FloatBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvfv(II[FI)V
    .locals 2

    const-string/jumbo v0, "glTexEnvfv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    .line 3
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    .line 4
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string/jumbo v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/a;->glTexEnvfv(II[FI)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvi(III)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glTexEnvi"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "target"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "pname"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    const-string/jumbo v0, "param"

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    .line 29
    .line 30
    invoke-interface {v0, p1, p2, p3}, Lr/c;->glTexEnvi(III)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public glTexEnviv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string/jumbo v0, "glTexEnviv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glTexEnviv(IILjava/nio/IntBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexEnviv(II[II)V
    .locals 2

    const-string/jumbo v0, "glTexEnviv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glTexEnviv(II[II)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvx(III)V
    .locals 2

    .line 1
    const-string/jumbo v0, "glTexEnvx"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "target"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string/jumbo v0, "pname"

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string/jumbo v0, "param"

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 37
    .line 38
    invoke-interface {v0, p1, p2, p3}, Lr/a;->glTexEnvx(III)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public glTexEnvxv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string/jumbo v0, "glTexEnvxv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 10
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    .line 11
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    .line 12
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3}, Lr/a;->glTexEnvxv(IILjava/nio/IntBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvxv(II[II)V
    .locals 2

    const-string/jumbo v0, "glTexEnvxv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    .line 3
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    .line 4
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string/jumbo v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/a;->glTexEnvxv(II[II)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexGenf(IIF)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glTexGenf"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "coord"

    .line 8
    .line 9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v0, "pname"

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    const-string/jumbo v0, "param"

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    .line 28
    .line 29
    invoke-interface {v0, p1, p2, p3}, Lr/e;->glTexGenf(IIF)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public glTexGenfv(IILjava/nio/FloatBuffer;)V
    .locals 2

    const-string/jumbo v0, "glTexGenfv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2, p3}, Lr/e;->glTexGenfv(IILjava/nio/FloatBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexGenfv(II[FI)V
    .locals 2

    const-string/jumbo v0, "glTexGenfv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/e;->glTexGenfv(II[FI)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexGeni(III)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glTexGeni"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "coord"

    .line 8
    .line 9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v0, "pname"

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    const-string/jumbo v0, "param"

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    .line 28
    .line 29
    invoke-interface {v0, p1, p2, p3}, Lr/e;->glTexGeni(III)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public glTexGeniv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string/jumbo v0, "glTexGeniv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2, p3}, Lr/e;->glTexGeniv(IILjava/nio/IntBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexGeniv(II[II)V
    .locals 2

    const-string/jumbo v0, "glTexGeniv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/e;->glTexGeniv(II[II)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexGenx(III)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glTexGenx"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "coord"

    .line 8
    .line 9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v0, "pname"

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    const-string/jumbo v0, "param"

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    .line 28
    .line 29
    invoke-interface {v0, p1, p2, p3}, Lr/e;->glTexGenx(III)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public glTexGenxv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string/jumbo v0, "glTexGenxv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2, p3}, Lr/e;->glTexGenxv(IILjava/nio/IntBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexGenxv(II[II)V
    .locals 2

    const-string/jumbo v0, "glTexGenxv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/e;->glTexGenxv(II[II)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    const-string/jumbo v1, "glTexImage2D"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v1, "target"

    .line 9
    .line 10
    .line 11
    move v3, p1

    .line 12
    invoke-direct {p0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    const-string/jumbo v1, "level"

    .line 16
    .line 17
    .line 18
    move v4, p2

    .line 19
    invoke-direct {p0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    const-string/jumbo v1, "internalformat"

    .line 23
    .line 24
    .line 25
    move v5, p3

    .line 26
    invoke-direct {p0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    const-string/jumbo v1, "width"

    .line 30
    .line 31
    .line 32
    move/from16 v6, p4

    .line 33
    .line 34
    invoke-direct {p0, v1, v6}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    const-string/jumbo v1, "height"

    .line 38
    .line 39
    .line 40
    move/from16 v7, p5

    .line 41
    .line 42
    invoke-direct {p0, v1, v7}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    const-string v1, "border"

    .line 46
    .line 47
    move/from16 v8, p6

    .line 48
    .line 49
    invoke-direct {p0, v1, v8}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    const-string v1, "format"

    .line 53
    .line 54
    move/from16 v9, p7

    .line 55
    .line 56
    invoke-direct {p0, v1, v9}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    const-string/jumbo v1, "type"

    .line 60
    .line 61
    .line 62
    move/from16 v10, p8

    .line 63
    .line 64
    invoke-direct {p0, v1, v10}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const-string/jumbo v2, "pixels"

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, v2, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 78
    .line 79
    .line 80
    iget-object v2, v0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 81
    .line 82
    move-object/from16 v11, p9

    .line 83
    .line 84
    invoke-interface/range {v2 .. v11}, Lr/a;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 85
    .line 86
    .line 87
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public glTexParameterf(IIF)V
    .locals 2

    .line 1
    const-string/jumbo v0, "glTexParameterf"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "target"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string/jumbo v0, "pname"

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTexturePName(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string/jumbo v0, "param"

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p3}, Landroid/opengl/GLLogWrapper;->getTextureParamName(F)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 41
    .line 42
    invoke-interface {v0, p1, p2, p3}, Lr/a;->glTexParameterf(IIF)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public glTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 2

    const-string/jumbo v0, "glTexParameterfv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glTexParameterfv(IILjava/nio/FloatBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexParameterfv(II[FI)V
    .locals 2

    const-string/jumbo v0, "glTexParameterfv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glTexParameterfv(II[FI)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexParameteri(III)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glTexParameterxv"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "target"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "pname"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    const-string/jumbo v0, "param"

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    .line 29
    .line 30
    invoke-interface {v0, p1, p2, p3}, Lr/c;->glTexParameteri(III)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public glTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string/jumbo v0, "glTexParameteriv"

    .line 8
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    .line 10
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTexturePName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    const/4 v1, 0x4

    .line 11
    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 12
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 13
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glTexParameteriv(IILjava/nio/IntBuffer;)V

    .line 14
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexParameteriv(II[II)V
    .locals 2

    const-string/jumbo v0, "glTexParameteriv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    .line 3
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTexturePName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    const/4 v1, 0x4

    .line 4
    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glTexParameteriv(II[II)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexParameterx(III)V
    .locals 2

    .line 1
    const-string/jumbo v0, "glTexParameterx"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "target"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string/jumbo v0, "pname"

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTexturePName(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string/jumbo v0, "param"

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 37
    .line 38
    invoke-interface {v0, p1, p2, p3}, Lr/a;->glTexParameterx(III)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public glTexParameterxv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string/jumbo v0, "glTexParameterxv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glTexParameterxv(IILjava/nio/IntBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexParameterxv(II[II)V
    .locals 2

    const-string/jumbo v0, "glTexParameterxv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glTexParameterxv(II[II)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    const-string/jumbo v1, "glTexSubImage2D"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v1, "target"

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-direct {p0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string/jumbo v1, "level"

    .line 19
    .line 20
    .line 21
    move v4, p2

    .line 22
    invoke-direct {p0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    const-string/jumbo v1, "xoffset"

    .line 26
    .line 27
    .line 28
    move v5, p3

    .line 29
    invoke-direct {p0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    const-string/jumbo v1, "yoffset"

    .line 33
    .line 34
    .line 35
    move/from16 v6, p4

    .line 36
    .line 37
    invoke-direct {p0, v1, v6}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    const-string/jumbo v1, "width"

    .line 41
    .line 42
    .line 43
    move/from16 v7, p5

    .line 44
    .line 45
    invoke-direct {p0, v1, v7}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    const-string/jumbo v1, "height"

    .line 49
    .line 50
    .line 51
    move/from16 v8, p6

    .line 52
    .line 53
    invoke-direct {p0, v1, v8}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    const-string v1, "format"

    .line 57
    .line 58
    move/from16 v9, p7

    .line 59
    .line 60
    invoke-direct {p0, v1, v9}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    const-string/jumbo v1, "type"

    .line 64
    .line 65
    .line 66
    move/from16 v10, p8

    .line 67
    .line 68
    invoke-direct {p0, v1, v10}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const-string/jumbo v2, "pixels"

    .line 76
    .line 77
    .line 78
    invoke-direct {p0, v2, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 82
    .line 83
    .line 84
    iget-object v2, v0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 85
    .line 86
    move v3, p1

    .line 87
    move-object/from16 v11, p9

    .line 88
    .line 89
    invoke-interface/range {v2 .. v11}, Lr/a;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 90
    .line 91
    .line 92
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public glTranslatef(FFF)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glTranslatef"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "x"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "y"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 17
    .line 18
    .line 19
    const-string/jumbo v0, "z"

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 29
    .line 30
    invoke-interface {v0, p1, p2, p3}, Lr/a;->glTranslatef(FFF)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public glTranslatex(III)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glTranslatex"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "x"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "y"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    const-string/jumbo v0, "z"

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 29
    .line 30
    invoke-interface {v0, p1, p2, p3}, Lr/a;->glTranslatex(III)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public glVertexPointer(IIII)V
    .locals 1

    const-string/jumbo v0, "glVertexPointer"

    .line 7
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "size"

    .line 8
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "type"

    .line 9
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "stride"

    .line 10
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "offset"

    .line 11
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 13
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glVertexPointer(IIII)V

    return-void
.end method

.method public glVertexPointer(IIILjava/nio/Buffer;)V
    .locals 7

    const-string/jumbo v0, "glVertexPointer"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->argPointer(IIILjava/nio/Buffer;)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 4
    new-instance v0, Landroid/opengl/GLLogWrapper$PointerInfo;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;IIILjava/nio/Buffer;)V

    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mVertexPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/a;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glViewport(IIII)V
    .locals 1

    .line 1
    const-string/jumbo v0, "glViewport"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "x"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "y"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    const-string/jumbo v0, "width"

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    const-string/jumbo v0, "height"

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 35
    .line 36
    invoke-interface {v0, p1, p2, p3, p4}, Lr/a;->glViewport(IIII)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public glWeightPointerOES(IIII)V
    .locals 1

    const-string/jumbo v0, "glWeightPointerOES"

    .line 6
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "size"

    .line 7
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "type"

    .line 8
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "stride"

    .line 9
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "offset"

    .line 10
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 12
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lr/d;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/d;->glWeightPointerOES(IIII)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glWeightPointerOES(IIILjava/nio/Buffer;)V
    .locals 1

    const-string/jumbo v0, "glWeightPointerOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->argPointer(IIILjava/nio/Buffer;)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lr/d;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/d;->glWeightPointerOES(IIILjava/nio/Buffer;)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method
