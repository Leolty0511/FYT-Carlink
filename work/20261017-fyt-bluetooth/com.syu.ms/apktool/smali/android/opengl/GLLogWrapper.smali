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

.field public mColorArrayEnabled:Z

.field private mColorPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

.field private mLog:Ljava/io/Writer;

.field private mLogArgumentNames:Z

.field public mNormalArrayEnabled:Z

.field private mNormalPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

.field public mStringBuilder:Ljava/lang/StringBuilder;

.field private mTexCoordPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

.field public mTextureCoordArrayEnabled:Z

.field public mVertexArrayEnabled:Z

.field private mVertexPointer:Landroid/opengl/GLLogWrapper$PointerInfo;


# direct methods
.method public constructor <init>(Lb0/f;Ljava/io/Writer;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/opengl/GLWrapperBase;-><init>(Lb0/f;)V

    .line 2
    new-instance p1, Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-direct {p1, p0}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;)V

    iput-object p1, p0, Landroid/opengl/GLLogWrapper;->mColorPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 3
    new-instance p1, Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-direct {p1, p0}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;)V

    iput-object p1, p0, Landroid/opengl/GLLogWrapper;->mNormalPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 4
    new-instance p1, Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-direct {p1, p0}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;)V

    iput-object p1, p0, Landroid/opengl/GLLogWrapper;->mTexCoordPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 5
    new-instance p1, Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-direct {p1, p0}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;)V

    iput-object p1, p0, Landroid/opengl/GLLogWrapper;->mVertexPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 6
    iput-object p2, p0, Landroid/opengl/GLLogWrapper;->mLog:Ljava/io/Writer;

    .line 7
    iput-boolean p3, p0, Landroid/opengl/GLLogWrapper;->mLogArgumentNames:Z

    return-void
.end method

.method public static synthetic access$000(Landroid/opengl/GLLogWrapper;ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLLogWrapper;->toByteBuffer(ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private arg(Ljava/lang/String;F)V
    .locals 0

    .line 8
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;I)V
    .locals 0

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V
    .locals 0

    .line 12
    invoke-direct {p0, p2, p3}, Landroid/opengl/GLLogWrapper;->toString(ILjava/nio/FloatBuffer;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p2, v0, p3}, Landroid/opengl/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;ILjava/nio/ShortBuffer;)V
    .locals 0

    .line 14
    invoke-direct {p0, p2, p3}, Landroid/opengl/GLLogWrapper;->toString(ILjava/nio/ShortBuffer;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;I[FI)V
    .locals 0

    .line 11
    invoke-direct {p0, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->toString(I[FI)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;I[II)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p2, v0, p3, p4}, Landroid/opengl/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;I[SI)V
    .locals 0

    .line 10
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

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    .line 5
    :cond_1
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;Z)V
    .locals 0

    .line 6
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private argPointer(IIILjava/nio/Buffer;)V
    .locals 1

    const-string/jumbo v0, "size"

    .line 1
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getPointerTypeName(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "type"

    invoke-direct {p0, p2, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "stride"

    .line 3
    invoke-direct {p0, p1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p4}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "pointer"

    invoke-direct {p0, p2, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private begin(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x28

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Landroid/opengl/GLLogWrapper;->mArgCount:I

    return-void
.end method

.method private bindArrays()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mColorArrayEnabled:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mColorPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->bindByteBuffer()V

    .line 3
    :cond_0
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mNormalArrayEnabled:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mNormalPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->bindByteBuffer()V

    .line 5
    :cond_1
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mTexCoordPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->bindByteBuffer()V

    .line 7
    :cond_2
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mVertexArrayEnabled:Z

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mVertexPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->bindByteBuffer()V

    :cond_3
    return-void
.end method

.method private checkError()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0}, Lb0/a;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->logLine(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Landroid/opengl/GLLogWrapper$PointerInfo;I)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p2, " "

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":{"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_7

    .line 3
    iget-object p2, p4, Landroid/opengl/GLLogWrapper$PointerInfo;->mTempByteBuffer:Ljava/nio/ByteBuffer;

    if-nez p2, :cond_1

    goto/16 :goto_2

    .line 4
    :cond_1
    iget p2, p4, Landroid/opengl/GLLogWrapper$PointerInfo;->mStride:I

    if-gez p2, :cond_2

    const-string p2, "invalid stride"

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 6
    :cond_2
    invoke-virtual {p4}, Landroid/opengl/GLLogWrapper$PointerInfo;->getStride()I

    move-result p2

    .line 7
    iget-object p3, p4, Landroid/opengl/GLLogWrapper$PointerInfo;->mTempByteBuffer:Ljava/nio/ByteBuffer;

    .line 8
    iget v0, p4, Landroid/opengl/GLLogWrapper$PointerInfo;->mSize:I

    .line 9
    iget v1, p4, Landroid/opengl/GLLogWrapper$PointerInfo;->mType:I

    .line 10
    invoke-virtual {p4, v1}, Landroid/opengl/GLLogWrapper$PointerInfo;->sizeof(I)I

    move-result p4

    mul-int/2addr p2, p5

    const/4 p5, 0x0

    :goto_0
    if-ge p5, v0, :cond_6

    if-lez p5, :cond_3

    const-string v2, ", "

    .line 11
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/16 v2, 0x1406

    if-eq v1, v2, :cond_5

    const/16 v2, 0x140c

    if-eq v1, v2, :cond_4

    packed-switch v1, :pswitch_data_0

    const-string v2, "?"

    .line 12
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 13
    :pswitch_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    .line 14
    div-int/lit8 v3, p2, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v2

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 16
    :pswitch_1
    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 18
    :pswitch_2
    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 20
    :cond_4
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    .line 21
    div-int/lit8 v3, p2, 0x4

    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 23
    :cond_5
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 24
    div-int/lit8 v3, p2, 0x4

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v2

    .line 25
    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/2addr p2, p4

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_6
    const-string/jumbo p2, "}"

    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_7
    :goto_2
    const-string/jumbo p2, "undefined }"

    .line 27
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    nop

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
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] ="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mVertexArrayEnabled:Z

    iget-object v4, p0, Landroid/opengl/GLLogWrapper;->mVertexPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    const-string/jumbo v3, "v"

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLLogWrapper;->doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Landroid/opengl/GLLogWrapper$PointerInfo;I)V

    .line 3
    iget-boolean v7, p0, Landroid/opengl/GLLogWrapper;->mNormalArrayEnabled:Z

    iget-object v9, p0, Landroid/opengl/GLLogWrapper;->mNormalPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    const-string v8, "n"

    move-object v5, p0

    move-object v6, p1

    move v10, p3

    invoke-direct/range {v5 .. v10}, Landroid/opengl/GLLogWrapper;->doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Landroid/opengl/GLLogWrapper$PointerInfo;I)V

    .line 4
    iget-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mColorArrayEnabled:Z

    iget-object v4, p0, Landroid/opengl/GLLogWrapper;->mColorPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    const-string v3, "c"

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLLogWrapper;->doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Landroid/opengl/GLLogWrapper$PointerInfo;I)V

    .line 5
    iget-boolean v7, p0, Landroid/opengl/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    iget-object v9, p0, Landroid/opengl/GLLogWrapper;->mTexCoordPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    const-string/jumbo v8, "t"

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Landroid/opengl/GLLogWrapper;->doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Landroid/opengl/GLLogWrapper$PointerInfo;I)V

    const-string p2, "\n"

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private end()V
    .locals 1

    const-string v0, ");\n"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->flush()V

    return-void
.end method

.method private endLogIndices()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->unbindArrays()V

    return-void
.end method

.method private flush()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mLog:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mLog:Ljava/io/Writer;

    :goto_0
    return-void
.end method

.method private formattedAppend(Ljava/lang/StringBuilder;II)V
    .locals 1

    if-eqz p3, :cond_2

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p2, p2

    const/high16 p3, 0x47800000    # 65536.0f

    div-float/2addr p2, p3

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2
    :cond_1
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method private getBeginMode(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 1
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

    .line 1
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

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_0

    const-string v1, "GL_DEPTH_BUFFER_BIT"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p1, p1, -0x101

    :cond_0
    and-int/lit16 v1, p1, 0x400

    const-string v2, " | "

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "GL_STENCIL_BUFFER_BIT"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p1, p1, -0x401

    :cond_2
    and-int/lit16 v1, p1, 0x4000

    if-eqz v1, :cond_4

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "GL_COLOR_BUFFER_BIT"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p1, p1, -0x4001

    :cond_4
    if-eqz p1, :cond_6

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_5
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getClientState(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 1
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

    .line 1
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

    .line 1
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

    .line 1
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

    .line 1
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

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getHintMode(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 1
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

    .line 1
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

    .line 1
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

    .line 1
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

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    return v0

    :sswitch_0
    const/16 p1, 0x10

    return p1

    :sswitch_1
    new-array p1, v2, [I

    .line 1
    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    const v2, 0x86a2

    invoke-interface {v1, v2, p1, v0}, Lb0/a;->glGetIntegerv(I[II)V

    .line 2
    aget p1, p1, v0

    return p1

    :sswitch_2
    return v2

    :sswitch_3
    return v1

    :sswitch_4
    return v2

    :sswitch_5
    return v1

    :sswitch_6
    return v2

    :sswitch_7
    return v1

    nop

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

    .line 1
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

    const/16 v0, 0x4000

    if-lt p1, v0, :cond_0

    const/16 v0, 0x4007

    if-gt p1, v0, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GL_LIGHT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getLightPName(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 1
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

    .line 1
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

    .line 1
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

    .line 1
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

    .line 1
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

    .line 1
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

    float-to-int v0, p1

    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_6

    const/16 p1, 0x104

    if-eq v0, p1, :cond_5

    const/16 p1, 0xbe2

    if-eq v0, p1, :cond_4

    const/16 p1, 0x1e01

    if-eq v0, p1, :cond_3

    const p1, 0x8570

    if-eq v0, p1, :cond_2

    const/16 p1, 0x2100

    if-eq v0, p1, :cond_1

    const/16 p1, 0x2101

    if-eq v0, p1, :cond_0

    .line 1
    invoke-static {v0}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "GL_DECAL"

    return-object p1

    :cond_1
    const-string p1, "GL_MODULATE"

    return-object p1

    :cond_2
    const-string p1, "GL_COMBINE"

    return-object p1

    :cond_3
    const-string p1, "GL_REPLACE"

    return-object p1

    :cond_4
    const-string p1, "GL_BLEND"

    return-object p1

    :cond_5
    const-string p1, "GL_ADD"

    return-object p1

    .line 2
    :cond_6
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getTextureEnvTarget(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x2300

    if-eq p1, v0, :cond_0

    .line 1
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

    .line 1
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

    float-to-int v0, p1

    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_4

    const/16 p1, 0x2600

    if-eq v0, p1, :cond_3

    const/16 p1, 0x2601

    if-eq v0, p1, :cond_2

    const/16 p1, 0x2901

    if-eq v0, p1, :cond_1

    const p1, 0x812f

    if-eq v0, p1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-static {v0}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    const-string p1, "GL_LINEAR_MIPMAP_LINEAR"

    return-object p1

    :pswitch_1
    const-string p1, "GL_NEAREST_MIPMAP_LINEAR"

    return-object p1

    :pswitch_2
    const-string p1, "GL_LINEAR_MIPMAP_NEAREST"

    return-object p1

    :pswitch_3
    const-string p1, "GL_NEAREST_MIPMAP_NEAREST"

    return-object p1

    :cond_0
    const-string p1, "GL_CLAMP_TO_EDGE"

    return-object p1

    :cond_1
    const-string p1, "GL_REPEAT"

    return-object p1

    :cond_2
    const-string p1, "GL_LINEAR"

    return-object p1

    :cond_3
    const-string p1, "GL_NEAREST"

    return-object p1

    .line 2
    :cond_4
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    return-object p1

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

    .line 1
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "GL_TEXTURE_2D"

    return-object p1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 1
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

    .line 1
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

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    return-void
.end method

.method private returns(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ") returns "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->flush()V

    return-void
.end method

.method private startLogIndices()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->bindArrays()V

    return-void
.end method

.method private toByteBuffer(ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;
    .locals 6

    const/4 v0, 0x0

    if-gez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1
    :goto_0
    instance-of v2, p2, Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_3

    .line 2
    check-cast p2, Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    sub-int/2addr p1, v2

    .line 5
    :cond_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    :goto_1
    if-ge v0, p1, :cond_2

    .line 6
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_8

    .line 8
    :cond_3
    instance-of v2, p2, Ljava/nio/CharBuffer;

    if-eqz v2, :cond_6

    .line 9
    check-cast p2, Ljava/nio/CharBuffer;

    .line 10
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->limit()I

    move-result p1

    sub-int/2addr p1, v2

    mul-int/lit8 p1, p1, 0x2

    .line 12
    :cond_4
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v3

    .line 14
    :goto_2
    div-int/lit8 v4, p1, 0x2

    if-ge v0, v4, :cond_5

    .line 15
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->get()C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 16
    :cond_5
    invoke-virtual {p2, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_8

    .line 17
    :cond_6
    instance-of v2, p2, Ljava/nio/ShortBuffer;

    if-eqz v2, :cond_9

    .line 18
    check-cast p2, Ljava/nio/ShortBuffer;

    .line 19
    invoke-virtual {p2}, Ljava/nio/ShortBuffer;->position()I

    move-result v2

    if-eqz v1, :cond_7

    .line 20
    invoke-virtual {p2}, Ljava/nio/ShortBuffer;->limit()I

    move-result p1

    sub-int/2addr p1, v2

    mul-int/lit8 p1, p1, 0x2

    .line 21
    :cond_7
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/ShortBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    .line 23
    :goto_3
    div-int/lit8 v4, p1, 0x2

    if-ge v0, v4, :cond_8

    .line 24
    invoke-virtual {p2}, Ljava/nio/ShortBuffer;->get()S

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 25
    :cond_8
    invoke-virtual {p2, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_8

    .line 26
    :cond_9
    instance-of v2, p2, Ljava/nio/IntBuffer;

    if-eqz v2, :cond_c

    .line 27
    check-cast p2, Ljava/nio/IntBuffer;

    .line 28
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->position()I

    move-result v2

    if-eqz v1, :cond_a

    .line 29
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->limit()I

    move-result p1

    sub-int/2addr p1, v2

    mul-int/lit8 p1, p1, 0x4

    .line 30
    :cond_a
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    .line 32
    :goto_4
    div-int/lit8 v4, p1, 0x4

    if-ge v0, v4, :cond_b

    .line 33
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 34
    :cond_b
    invoke-virtual {p2, v2}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_8

    .line 35
    :cond_c
    instance-of v2, p2, Ljava/nio/FloatBuffer;

    if-eqz v2, :cond_f

    .line 36
    check-cast p2, Ljava/nio/FloatBuffer;

    .line 37
    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->position()I

    move-result v2

    if-eqz v1, :cond_d

    .line 38
    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->limit()I

    move-result p1

    sub-int/2addr p1, v2

    mul-int/lit8 p1, p1, 0x4

    .line 39
    :cond_d
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 41
    :goto_5
    div-int/lit8 v4, p1, 0x4

    if-ge v0, v4, :cond_e

    .line 42
    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->get()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 43
    :cond_e
    invoke-virtual {p2, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_8

    .line 44
    :cond_f
    instance-of v2, p2, Ljava/nio/DoubleBuffer;

    if-eqz v2, :cond_12

    .line 45
    check-cast p2, Ljava/nio/DoubleBuffer;

    .line 46
    invoke-virtual {p2}, Ljava/nio/DoubleBuffer;->position()I

    move-result v2

    if-eqz v1, :cond_10

    .line 47
    invoke-virtual {p2}, Ljava/nio/DoubleBuffer;->limit()I

    move-result p1

    sub-int/2addr p1, v2

    mul-int/lit8 p1, p1, 0x8

    .line 48
    :cond_10
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/DoubleBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v3

    .line 50
    :goto_6
    div-int/lit8 v4, p1, 0x8

    if-ge v0, v4, :cond_11

    .line 51
    invoke-virtual {p2}, Ljava/nio/DoubleBuffer;->get()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/nio/DoubleBuffer;->put(D)Ljava/nio/DoubleBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 52
    :cond_11
    invoke-virtual {p2, v2}, Ljava/nio/DoubleBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_8

    .line 53
    :cond_12
    instance-of v2, p2, Ljava/nio/LongBuffer;

    if-eqz v2, :cond_15

    .line 54
    check-cast p2, Ljava/nio/LongBuffer;

    .line 55
    invoke-virtual {p2}, Ljava/nio/LongBuffer;->position()I

    move-result v2

    if-eqz v1, :cond_13

    .line 56
    invoke-virtual {p2}, Ljava/nio/LongBuffer;->limit()I

    move-result p1

    sub-int/2addr p1, v2

    mul-int/lit8 p1, p1, 0x8

    .line 57
    :cond_13
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/LongBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v3

    .line 59
    :goto_7
    div-int/lit8 v4, p1, 0x8

    if-ge v0, v4, :cond_14

    .line 60
    invoke-virtual {p2}, Ljava/nio/LongBuffer;->get()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/nio/LongBuffer;->put(J)Ljava/nio/LongBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 61
    :cond_14
    invoke-virtual {p2, v2}, Ljava/nio/LongBuffer;->position(I)Ljava/nio/Buffer;

    .line 62
    :goto_8
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 63
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object v1

    .line 64
    :cond_15
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unimplemented Buffer subclass."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private toCharIndices(IILjava/nio/Buffer;)[C
    .locals 3

    .line 1
    new-array v0, p1, [C

    const/16 v1, 0x1401

    const/4 v2, 0x0

    if-eq p2, v1, :cond_2

    const/16 v1, 0x1403

    if-eq p2, v1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    instance-of p2, p3, Ljava/nio/CharBuffer;

    if-eqz p2, :cond_1

    .line 3
    check-cast p3, Ljava/nio/CharBuffer;

    goto :goto_0

    :cond_1
    mul-int/lit8 p1, p1, 0x2

    .line 4
    invoke-direct {p0, p1, p3}, Landroid/opengl/GLLogWrapper;->toByteBuffer(ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object p3

    .line 6
    :goto_0
    invoke-virtual {p3}, Ljava/nio/CharBuffer;->position()I

    move-result p1

    .line 7
    invoke-virtual {p3, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 8
    invoke-virtual {p3, v0}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    .line 9
    invoke-virtual {p3, p1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2

    .line 10
    :cond_2
    invoke-direct {p0, p1, p3}, Landroid/opengl/GLLogWrapper;->toByteBuffer(ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 11
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p3

    .line 12
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p2

    :goto_1
    if-ge v2, p1, :cond_3

    add-int v1, p2, v2

    .line 13
    aget-byte v1, p3, v1

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    aput-char v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-object v0
.end method

.method private toString(IILjava/nio/IntBuffer;)Ljava/lang/String;
    .locals 4

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\n"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p3, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    invoke-direct {p0, v0, v2, p2}, Landroid/opengl/GLLogWrapper;->formattedAppend(Ljava/lang/StringBuilder;II)V

    const/16 v2, 0xa

    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "}"

    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private toString(II[II)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\n"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    add-int v3, p4, v2

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ltz v3, :cond_1

    if-lt v3, v1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    aget v3, p3, v3

    invoke-direct {p0, v0, v3, p2}, Landroid/opengl/GLLogWrapper;->formattedAppend(Ljava/lang/StringBuilder;II)V

    goto :goto_2

    :cond_1
    :goto_1
    const-string v3, "out of bounds"

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const/16 v3, 0xa

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "}"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private toString(ILjava/nio/FloatBuffer;)Ljava/lang/String;
    .locals 4

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\n"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private toString(ILjava/nio/ShortBuffer;)Ljava/lang/String;
    .locals 4

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\n"

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private toString(I[FI)Ljava/lang/String;
    .locals 6

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\n"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    add-int v3, p3, v2

    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ltz v3, :cond_1

    if-lt v3, v1, :cond_0

    goto :goto_1

    .line 23
    :cond_0
    aget v3, p2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    :goto_1
    const-string v3, "out of bounds"

    .line 24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const/16 v3, 0xa

    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "}"

    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private toString(I[SI)Ljava/lang/String;
    .locals 6

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\n"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    add-int v3, p3, v2

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ltz v3, :cond_1

    if-lt v3, v1, :cond_0

    goto :goto_1

    .line 14
    :cond_0
    aget-short v3, p2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    :goto_1
    const-string v3, "out of bounds"

    .line 15
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const/16 v3, 0xa

    .line 16
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "}"

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private unbindArrays()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mColorArrayEnabled:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mColorPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->unbindByteBuffer()V

    .line 3
    :cond_0
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mNormalArrayEnabled:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mNormalPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->unbindByteBuffer()V

    .line 5
    :cond_1
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mTexCoordPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->unbindByteBuffer()V

    .line 7
    :cond_2
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mVertexArrayEnabled:Z

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mVertexPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->unbindByteBuffer()V

    :cond_3
    return-void
.end method


# virtual methods
.method public glActiveTexture(I)V
    .locals 1

    const-string v0, "glActiveTexture"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "texture"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glActiveTexture(I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glAlphaFunc(IF)V
    .locals 1

    const-string v0, "glAlphaFunc"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "func"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "ref"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glAlphaFunc(IF)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glAlphaFuncx(II)V
    .locals 1

    const-string v0, "glAlphaFuncx"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "func"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "ref"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glAlphaFuncx(II)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glBindBuffer(II)V
    .locals 1

    const-string v0, "glBindBuffer"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "buffer"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2}, Lb0/c;->glBindBuffer(II)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glBindFramebufferOES(II)V
    .locals 1

    const-string v0, "glBindFramebufferOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "framebuffer"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2}, Lb0/e;->glBindFramebufferOES(II)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glBindRenderbufferOES(II)V
    .locals 1

    const-string v0, "glBindRenderbufferOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "renderbuffer"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2}, Lb0/e;->glBindRenderbufferOES(II)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glBindTexture(II)V
    .locals 2

    const-string v0, "glBindTexture"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "target"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "texture"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glBindTexture(II)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glBlendEquation(I)V
    .locals 1

    const-string v0, "glBlendEquation"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "mode"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1}, Lb0/e;->glBlendEquation(I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glBlendEquationSeparate(II)V
    .locals 1

    const-string v0, "glBlendEquationSeparate"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "modeRGB"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "modeAlpha"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2}, Lb0/e;->glBlendEquationSeparate(II)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glBlendFunc(II)V
    .locals 2

    const-string v0, "glBlendFunc"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFactor(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sfactor"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getFactor(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dfactor"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glBlendFunc(II)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glBlendFuncSeparate(IIII)V
    .locals 1

    const-string v0, "glBlendFuncSeparate"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "srcRGB"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "dstRGB"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "srcAlpha"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "dstAlpha"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/e;->glBlendFuncSeparate(IIII)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glBufferData(IILjava/nio/Buffer;I)V
    .locals 2

    const-string v0, "glBufferData"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "size"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "data"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "usage"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glBufferData(IILjava/nio/Buffer;I)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glBufferSubData(IIILjava/nio/Buffer;)V
    .locals 2

    const-string v0, "glBufferSubData"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "offset"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "size"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {p4}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "data"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glCheckFramebufferStatusOES(I)I
    .locals 1

    const-string v0, "glCheckFramebufferStatusOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1}, Lb0/e;->glCheckFramebufferStatusOES(I)I

    move-result p1

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return p1
.end method

.method public glClear(I)V
    .locals 2

    const-string v0, "glClear"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getClearBufferMask(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mask"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glClear(I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClearColor(FFFF)V
    .locals 1

    const-string v0, "glClearColor"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "red"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "green"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "blue"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "alpha"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/a;->glClearColor(FFFF)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClearColorx(IIII)V
    .locals 1

    const-string v0, "glClearColor"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "red"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "green"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "blue"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "alpha"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/a;->glClearColorx(IIII)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClearDepthf(F)V
    .locals 1

    const-string v0, "glClearDepthf"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "depth"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glClearDepthf(F)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClearDepthx(I)V
    .locals 1

    const-string v0, "glClearDepthx"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "depth"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glClearDepthx(I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClearStencil(I)V
    .locals 1

    const-string v0, "glClearStencil"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "s"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glClearStencil(I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClientActiveTexture(I)V
    .locals 1

    const-string v0, "glClientActiveTexture"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "texture"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glClientActiveTexture(I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glClipPlanef"

    .line 8
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "plane"

    .line 9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "equation"

    const/4 v1, 0x4

    .line 10
    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 12
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2}, Lb0/c;->glClipPlanef(ILjava/nio/FloatBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClipPlanef(I[FI)V
    .locals 2

    const-string v0, "glClipPlanef"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "plane"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "equation"

    const/4 v1, 0x4

    .line 3
    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glClipPlanef(I[FI)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClipPlanex(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glClipPlanef"

    .line 8
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "plane"

    .line 9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "equation"

    const/4 v1, 0x4

    .line 10
    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 12
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2}, Lb0/c;->glClipPlanex(ILjava/nio/IntBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClipPlanex(I[II)V
    .locals 2

    const-string v0, "glClipPlanex"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "plane"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "equation"

    const/4 v1, 0x4

    .line 3
    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glClipPlanex(I[II)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glColor4f(FFFF)V
    .locals 1

    const-string v0, "glColor4f"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "red"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "green"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "blue"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "alpha"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/a;->glColor4f(FFFF)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glColor4ub(BBBB)V
    .locals 1

    const-string v0, "glColor4ub"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "red"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "green"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "blue"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "alpha"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glColor4ub(BBBB)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glColor4x(IIII)V
    .locals 1

    const-string v0, "glColor4x"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "red"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "green"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "blue"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "alpha"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/a;->glColor4x(IIII)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glColorMask(ZZZZ)V
    .locals 1

    const-string v0, "glColorMask"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "red"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    const-string v0, "green"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    const-string v0, "blue"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    const-string v0, "alpha"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/a;->glColorMask(ZZZZ)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glColorPointer(IIII)V
    .locals 1

    const-string v0, "glColorPointer"

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

    const-string v0, "offset"

    .line 11
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 13
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glColorPointer(IIII)V

    .line 14
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glColorPointer(IIILjava/nio/Buffer;)V
    .locals 7

    const-string v0, "glColorPointer"

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
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/a;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V
    .locals 11

    move-object v0, p0

    const-string v1, "glCompressedTexImage2D"

    .line 1
    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "target"

    invoke-direct {p0, v2, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "level"

    move v4, p2

    .line 3
    invoke-direct {p0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "internalformat"

    move v5, p3

    .line 4
    invoke-direct {p0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "width"

    move v6, p4

    .line 5
    invoke-direct {p0, v1, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "height"

    move/from16 v7, p5

    .line 6
    invoke-direct {p0, v1, v7}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "border"

    move/from16 v8, p6

    .line 7
    invoke-direct {p0, v1, v8}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "imageSize"

    move/from16 v9, p7

    .line 8
    invoke-direct {p0, v1, v9}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 9
    invoke-virtual/range {p8 .. p8}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data"

    invoke-direct {p0, v2, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 11
    iget-object v2, v0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    move v3, p1

    move-object/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Lb0/a;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    .line 12
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 12

    move-object v0, p0

    const-string v1, "glCompressedTexSubImage2D"

    .line 1
    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "target"

    invoke-direct {p0, v2, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "level"

    move v4, p2

    .line 3
    invoke-direct {p0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "xoffset"

    move v5, p3

    .line 4
    invoke-direct {p0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "yoffset"

    move/from16 v6, p4

    .line 5
    invoke-direct {p0, v1, v6}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "width"

    move/from16 v7, p5

    .line 6
    invoke-direct {p0, v1, v7}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "height"

    move/from16 v8, p6

    .line 7
    invoke-direct {p0, v1, v8}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "format"

    move/from16 v9, p7

    .line 8
    invoke-direct {p0, v1, v9}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "imageSize"

    move/from16 v10, p8

    .line 9
    invoke-direct {p0, v1, v10}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 10
    invoke-virtual/range {p9 .. p9}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data"

    invoke-direct {p0, v2, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 12
    iget-object v2, v0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    move v3, p1

    move-object/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Lb0/a;->glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glCopyTexImage2D(IIIIIIII)V
    .locals 11

    move-object v0, p0

    const-string v1, "glCopyTexImage2D"

    .line 1
    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "target"

    invoke-direct {p0, v2, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "level"

    move v4, p2

    .line 3
    invoke-direct {p0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "internalformat"

    move v5, p3

    .line 4
    invoke-direct {p0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "x"

    move v6, p4

    .line 5
    invoke-direct {p0, v1, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "y"

    move/from16 v7, p5

    .line 6
    invoke-direct {p0, v1, v7}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "width"

    move/from16 v8, p6

    .line 7
    invoke-direct {p0, v1, v8}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "height"

    move/from16 v9, p7

    .line 8
    invoke-direct {p0, v1, v9}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "border"

    move/from16 v10, p8

    .line 9
    invoke-direct {p0, v1, v10}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 10
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 11
    iget-object v2, v0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    move v3, p1

    invoke-interface/range {v2 .. v10}, Lb0/a;->glCopyTexImage2D(IIIIIIII)V

    .line 12
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glCopyTexSubImage2D(IIIIIIII)V
    .locals 11

    move-object v0, p0

    const-string v1, "glCopyTexSubImage2D"

    .line 1
    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "target"

    invoke-direct {p0, v2, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "level"

    move v4, p2

    .line 3
    invoke-direct {p0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "xoffset"

    move v5, p3

    .line 4
    invoke-direct {p0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "yoffset"

    move v6, p4

    .line 5
    invoke-direct {p0, v1, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "x"

    move/from16 v7, p5

    .line 6
    invoke-direct {p0, v1, v7}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "y"

    move/from16 v8, p6

    .line 7
    invoke-direct {p0, v1, v8}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "width"

    move/from16 v9, p7

    .line 8
    invoke-direct {p0, v1, v9}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "height"

    move/from16 v10, p8

    .line 9
    invoke-direct {p0, v1, v10}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 10
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 11
    iget-object v2, v0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    move v3, p1

    invoke-interface/range {v2 .. v10}, Lb0/a;->glCopyTexSubImage2D(IIIIIIII)V

    .line 12
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glCullFace(I)V
    .locals 1

    const-string v0, "glCullFace"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "mode"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glCullFace(I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glCurrentPaletteMatrixOES(I)V
    .locals 1

    const-string v0, "glCurrentPaletteMatrixOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "matrixpaletteindex"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lb0/d;

    invoke-interface {v0, p1}, Lb0/d;->glCurrentPaletteMatrixOES(I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDeleteBuffers(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glDeleteBuffers"

    .line 8
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "n"

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
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2}, Lb0/c;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDeleteBuffers(I[II)V
    .locals 2

    const-string v0, "glDeleteBuffers"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "n"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "buffers"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glDeleteBuffers(I[II)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDeleteFramebuffersOES(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glDeleteFramebuffersOES"

    .line 8
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "n"

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
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2}, Lb0/e;->glDeleteFramebuffersOES(ILjava/nio/IntBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDeleteFramebuffersOES(I[II)V
    .locals 2

    const-string v0, "glDeleteFramebuffersOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "n"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "framebuffers"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3}, Lb0/e;->glDeleteFramebuffersOES(I[II)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDeleteRenderbuffersOES(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glDeleteRenderbuffersOES"

    .line 8
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "n"

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
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2}, Lb0/e;->glDeleteRenderbuffersOES(ILjava/nio/IntBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDeleteRenderbuffersOES(I[II)V
    .locals 2

    const-string v0, "glDeleteRenderbuffersOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "n"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "renderbuffers"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3}, Lb0/e;->glDeleteRenderbuffersOES(I[II)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDeleteTextures(ILjava/nio/IntBuffer;)V
    .locals 1

    const-string v0, "glDeleteTextures"

    .line 8
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "n"

    .line 9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "textures"

    .line 10
    invoke-direct {p0, v0, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 12
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDeleteTextures(I[II)V
    .locals 1

    const-string v0, "glDeleteTextures"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "n"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "textures"

    .line 3
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glDeleteTextures(I[II)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDepthFunc(I)V
    .locals 1

    const-string v0, "glDepthFunc"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "func"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glDepthFunc(I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDepthMask(Z)V
    .locals 1

    const-string v0, "glDepthMask"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "flag"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glDepthMask(Z)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDepthRangef(FF)V
    .locals 1

    const-string v0, "glDepthRangef"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "near"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "far"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glDepthRangef(FF)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDepthRangex(II)V
    .locals 1

    const-string v0, "glDepthRangex"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "near"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "far"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glDepthRangex(II)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDisable(I)V
    .locals 2

    const-string v0, "glDisable"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getCap(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cap"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glDisable(I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDisableClientState(I)V
    .locals 2

    const-string v0, "glDisableClientState"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getClientState(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "array"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 4
    :pswitch_1
    iput-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    goto :goto_0

    .line 5
    :pswitch_2
    iput-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mColorArrayEnabled:Z

    goto :goto_0

    .line 6
    :pswitch_3
    iput-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mNormalArrayEnabled:Z

    goto :goto_0

    .line 7
    :pswitch_4
    iput-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mVertexArrayEnabled:Z

    .line 8
    :goto_0
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glDisableClientState(I)V

    .line 9
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void

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

    const-string v0, "glDrawArrays"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "mode"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "first"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "count"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->startLogIndices()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 6
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    add-int v2, p2, v0

    invoke-direct {p0, v1, v0, v2}, Landroid/opengl/GLLogWrapper;->doElement(Ljava/lang/StringBuilder;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->endLogIndices()V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 9
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glDrawArrays(III)V

    .line 10
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawElements(IIII)V
    .locals 1

    const-string v0, "glDrawElements"

    .line 13
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "mode"

    .line 14
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "count"

    .line 15
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "type"

    .line 16
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "offset"

    .line 17
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 18
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 19
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glDrawElements(IIII)V

    .line 20
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawElements(IIILjava/nio/Buffer;)V
    .locals 5

    const-string v0, "glDrawElements"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getBeginMode(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mode"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "count"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-direct {p0, p3}, Landroid/opengl/GLLogWrapper;->getIndexType(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

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
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/a;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 12
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexfOES(FFFFF)V
    .locals 7

    const-string v0, "glDrawTexfOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "x"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "y"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "z"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "width"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "height"

    .line 6
    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 8
    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lb0/d;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lb0/d;->glDrawTexfOES(FFFFF)V

    .line 9
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexfvOES(Ljava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glDrawTexfvOES"

    .line 7
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coords"

    const/4 v1, 0x5

    .line 8
    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 9
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 10
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lb0/d;

    invoke-interface {v0, p1}, Lb0/d;->glDrawTexfvOES(Ljava/nio/FloatBuffer;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexfvOES([FI)V
    .locals 2

    const-string v0, "glDrawTexfvOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coords"

    const/4 v1, 0x5

    .line 2
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string v0, "offset"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lb0/d;

    invoke-interface {v0, p1, p2}, Lb0/d;->glDrawTexfvOES([FI)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexiOES(IIIII)V
    .locals 7

    const-string v0, "glDrawTexiOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "x"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "y"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "z"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "width"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "height"

    .line 6
    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 8
    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lb0/d;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lb0/d;->glDrawTexiOES(IIIII)V

    .line 9
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexivOES(Ljava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glDrawTexivOES"

    .line 7
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coords"

    const/4 v1, 0x5

    .line 8
    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 9
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 10
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lb0/d;

    invoke-interface {v0, p1}, Lb0/d;->glDrawTexivOES(Ljava/nio/IntBuffer;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexivOES([II)V
    .locals 2

    const-string v0, "glDrawTexivOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coords"

    const/4 v1, 0x5

    .line 2
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string v0, "offset"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lb0/d;

    invoke-interface {v0, p1, p2}, Lb0/d;->glDrawTexivOES([II)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexsOES(SSSSS)V
    .locals 7

    const-string v0, "glDrawTexsOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "x"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "y"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "z"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "width"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "height"

    .line 6
    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 8
    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lb0/d;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lb0/d;->glDrawTexsOES(SSSSS)V

    .line 9
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexsvOES(Ljava/nio/ShortBuffer;)V
    .locals 2

    const-string v0, "glDrawTexsvOES"

    .line 7
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coords"

    const/4 v1, 0x5

    .line 8
    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/ShortBuffer;)V

    .line 9
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 10
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lb0/d;

    invoke-interface {v0, p1}, Lb0/d;->glDrawTexsvOES(Ljava/nio/ShortBuffer;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexsvOES([SI)V
    .locals 2

    const-string v0, "glDrawTexsvOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coords"

    const/4 v1, 0x5

    .line 2
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[SI)V

    const-string v0, "offset"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lb0/d;

    invoke-interface {v0, p1, p2}, Lb0/d;->glDrawTexsvOES([SI)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexxOES(IIIII)V
    .locals 7

    const-string v0, "glDrawTexxOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "x"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "y"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "z"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "width"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "height"

    .line 6
    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 8
    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lb0/d;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lb0/d;->glDrawTexxOES(IIIII)V

    .line 9
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexxvOES(Ljava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glDrawTexxvOES"

    .line 7
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coords"

    const/4 v1, 0x5

    .line 8
    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 9
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 10
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lb0/d;

    invoke-interface {v0, p1}, Lb0/d;->glDrawTexxvOES(Ljava/nio/IntBuffer;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexxvOES([II)V
    .locals 2

    const-string v0, "glDrawTexxvOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coords"

    const/4 v1, 0x5

    .line 2
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string v0, "offset"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lb0/d;

    invoke-interface {v0, p1, p2}, Lb0/d;->glDrawTexxvOES([II)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glEnable(I)V
    .locals 2

    const-string v0, "glEnable"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getCap(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cap"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glEnable(I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glEnableClientState(I)V
    .locals 2

    const-string v0, "glEnableClientState"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getClientState(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "array"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 4
    :pswitch_1
    iput-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    goto :goto_0

    .line 5
    :pswitch_2
    iput-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mColorArrayEnabled:Z

    goto :goto_0

    .line 6
    :pswitch_3
    iput-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mNormalArrayEnabled:Z

    goto :goto_0

    .line 7
    :pswitch_4
    iput-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mVertexArrayEnabled:Z

    .line 8
    :goto_0
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glEnableClientState(I)V

    .line 9
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void

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

    const-string v0, "glFinish"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0}, Lb0/a;->glFinish()V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFlush()V
    .locals 1

    const-string v0, "glFlush"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0}, Lb0/a;->glFlush()V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFogf(IF)V
    .locals 1

    const-string v0, "glFogf"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "pname"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "param"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glFogf(IF)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFogfv(ILjava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glFogfv"

    .line 8
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pname"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogParamCount(I)I

    move-result v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 12
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glFogfv(ILjava/nio/FloatBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFogfv(I[FI)V
    .locals 2

    const-string v0, "glFogfv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pname"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogParamCount(I)I

    move-result v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glFogfv(I[FI)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFogx(II)V
    .locals 2

    const-string v0, "glFogx"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pname"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "param"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glFogx(II)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFogxv(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glFogxv"

    .line 8
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pname"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogParamCount(I)I

    move-result v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 12
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glFogxv(ILjava/nio/IntBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFogxv(I[II)V
    .locals 2

    const-string v0, "glFogxv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pname"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogParamCount(I)I

    move-result v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glFogxv(I[II)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFramebufferRenderbufferOES(IIII)V
    .locals 1

    const-string v0, "glFramebufferRenderbufferOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "attachment"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "renderbuffertarget"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "renderbuffer"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/e;->glFramebufferRenderbufferOES(IIII)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFramebufferTexture2DOES(IIIII)V
    .locals 7

    const-string v0, "glFramebufferTexture2DOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "attachment"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "textarget"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "texture"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "level"

    .line 6
    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 8
    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lb0/e;->glFramebufferTexture2DOES(IIIII)V

    .line 9
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFrontFace(I)V
    .locals 1

    const-string v0, "glFrontFace"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "mode"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glFrontFace(I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFrustumf(FFFFFF)V
    .locals 8

    const-string v0, "glFrustumf"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "left"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "right"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "bottom"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "top"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "near"

    .line 6
    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "far"

    .line 7
    invoke-direct {p0, v0, p6}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 9
    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lb0/a;->glFrustumf(FFFFFF)V

    .line 10
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFrustumx(IIIIII)V
    .locals 8

    const-string v0, "glFrustumx"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "left"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "right"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "bottom"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "top"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "near"

    .line 6
    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "far"

    .line 7
    invoke-direct {p0, v0, p6}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 9
    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lb0/a;->glFrustumx(IIIIII)V

    .line 10
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGenBuffers(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glGenBuffers"

    .line 8
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "n"

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
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2}, Lb0/c;->glGenBuffers(ILjava/nio/IntBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGenBuffers(I[II)V
    .locals 2

    const-string v0, "glGenBuffers"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "n"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "buffers"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glGenBuffers(I[II)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGenFramebuffersOES(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glGenFramebuffersOES"

    .line 8
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "n"

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
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2}, Lb0/e;->glGenFramebuffersOES(ILjava/nio/IntBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGenFramebuffersOES(I[II)V
    .locals 2

    const-string v0, "glGenFramebuffersOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "n"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "framebuffers"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3}, Lb0/e;->glGenFramebuffersOES(I[II)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGenRenderbuffersOES(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glGenRenderbuffersOES"

    .line 8
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "n"

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
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2}, Lb0/e;->glGenRenderbuffersOES(ILjava/nio/IntBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGenRenderbuffersOES(I[II)V
    .locals 2

    const-string v0, "glGenRenderbuffersOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "n"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "renderbuffers"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3}, Lb0/e;->glGenRenderbuffersOES(I[II)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGenTextures(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glGenTextures"

    .line 8
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "n"

    .line 9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 10
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "textures"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glGenTextures(ILjava/nio/IntBuffer;)V

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

    const-string v0, "glGenTextures"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "n"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "textures"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glGenTextures(I[II)V

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

    const-string v0, "glGenerateMipmapOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1}, Lb0/e;->glGenerateMipmapOES(I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetBooleanv(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glGetBooleanv"

    .line 8
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "pname"

    .line 9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 10
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 12
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2}, Lb0/c;->glGetBooleanv(ILjava/nio/IntBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetBooleanv(I[ZI)V
    .locals 2

    const-string v0, "glGetBooleanv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "pname"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glGetBooleanv(I[ZI)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetBufferParameteriv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glGetBufferParameteriv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glGetBufferParameteriv(IILjava/nio/IntBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetBufferParameteriv(II[II)V
    .locals 2

    const-string v0, "glGetBufferParameteriv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glGetBufferParameteriv(II[II)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glGetClipPlanef"

    .line 8
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "pname"

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
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2}, Lb0/c;->glGetClipPlanef(ILjava/nio/FloatBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetClipPlanef(I[FI)V
    .locals 2

    const-string v0, "glGetClipPlanef"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "pname"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "eqn"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glGetClipPlanef(I[FI)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetClipPlanex(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glGetClipPlanex"

    .line 7
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "pname"

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
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2}, Lb0/c;->glGetClipPlanex(ILjava/nio/IntBuffer;)V

    .line 12
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetClipPlanex(I[II)V
    .locals 2

    const-string v0, "glGetClipPlanex"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "pname"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "eqn"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glGetClipPlanex(I[II)V

    return-void
.end method

.method public glGetError()I
    .locals 1

    const-string v0, "glGetError"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0}, Lb0/a;->glGetError()I

    move-result v0

    .line 3
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->returns(I)V

    return v0
.end method

.method public glGetFixedv(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glGetFixedv"

    .line 7
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "pname"

    .line 8
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 9
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 11
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2}, Lb0/c;->glGetFixedv(ILjava/nio/IntBuffer;)V

    .line 12
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetFixedv(I[II)V
    .locals 2

    const-string v0, "glGetFixedv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "pname"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glGetFixedv(I[II)V

    return-void
.end method

.method public glGetFloatv(ILjava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glGetFloatv"

    .line 7
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "pname"

    .line 8
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 9
    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 11
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2}, Lb0/c;->glGetFloatv(ILjava/nio/FloatBuffer;)V

    .line 12
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetFloatv(I[FI)V
    .locals 2

    const-string v0, "glGetFloatv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "pname"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glGetFloatv(I[FI)V

    return-void
.end method

.method public glGetFramebufferAttachmentParameterivOES(IIILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glGetFramebufferAttachmentParameterivOES"

    .line 10
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 11
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "attachment"

    .line 12
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 13
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 14
    invoke-virtual {p4}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 16
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/e;->glGetFramebufferAttachmentParameterivOES(IIILjava/nio/IntBuffer;)V

    .line 17
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetFramebufferAttachmentParameterivOES(III[II)V
    .locals 7

    const-string v0, "glGetFramebufferAttachmentParameterivOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "attachment"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offset"

    .line 6
    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 8
    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lb0/e;->glGetFramebufferAttachmentParameterivOES(III[II)V

    .line 9
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetIntegerv(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glGetIntegerv"

    .line 8
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pname"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 12
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateSize(I)I

    move-result v0

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateFormat(I)I

    move-result p1

    invoke-direct {p0, v0, p1, p2}, Landroid/opengl/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetIntegerv(I[II)V
    .locals 2

    const-string v0, "glGetIntegerv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pname"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glGetIntegerv(I[II)V

    .line 6
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateSize(I)I

    move-result v0

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateFormat(I)I

    move-result p1

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/opengl/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetLightfv(IILjava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glGetLightfv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "light"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glGetLightfv(IILjava/nio/FloatBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetLightfv(II[FI)V
    .locals 2

    const-string v0, "glGetLightfv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "light"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glGetLightfv(II[FI)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetLightxv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glGetLightxv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "light"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glGetLightxv(IILjava/nio/IntBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetLightxv(II[II)V
    .locals 2

    const-string v0, "glGetLightxv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "light"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glGetLightxv(II[II)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glGetMaterialfv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "face"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glGetMaterialfv(IILjava/nio/FloatBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetMaterialfv(II[FI)V
    .locals 2

    const-string v0, "glGetMaterialfv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "face"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glGetMaterialfv(II[FI)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetMaterialxv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glGetMaterialxv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "face"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glGetMaterialxv(IILjava/nio/IntBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetMaterialxv(II[II)V
    .locals 2

    const-string v0, "glGetMaterialxv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "face"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glGetMaterialxv(II[II)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetPointerv(I[Ljava/nio/Buffer;)V
    .locals 2

    const-string v0, "glGetPointerv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "pname"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2}, Lb0/c;->glGetPointerv(I[Ljava/nio/Buffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetRenderbufferParameterivOES(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glGetRenderbufferParameterivOES"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3}, Lb0/e;->glGetRenderbufferParameterivOES(IILjava/nio/IntBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetRenderbufferParameterivOES(II[II)V
    .locals 2

    const-string v0, "glGetRenderbufferParameterivOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/e;->glGetRenderbufferParameterivOES(II[II)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetString(I)Ljava/lang/String;
    .locals 1

    const-string v0, "glGetString"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "name"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glGetString(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-object p1
.end method

.method public glGetTexEnviv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glGetTexEnviv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "env"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glGetTexEnviv(IILjava/nio/IntBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexEnviv(II[II)V
    .locals 2

    const-string v0, "glGetTexEnviv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "env"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glGetTexEnviv(II[II)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexEnvxv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glGetTexEnviv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "env"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glGetTexEnvxv(IILjava/nio/IntBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexEnvxv(II[II)V
    .locals 2

    const-string v0, "glGetTexEnviv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "env"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glGetTexEnviv(II[II)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexGenfv(IILjava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glGetTexGenfv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3}, Lb0/e;->glGetTexGenfv(IILjava/nio/FloatBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexGenfv(II[FI)V
    .locals 2

    const-string v0, "glGetTexGenfv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/e;->glGetTexGenfv(II[FI)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexGeniv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glGetTexGeniv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3}, Lb0/e;->glGetTexGeniv(IILjava/nio/IntBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexGeniv(II[II)V
    .locals 2

    const-string v0, "glGetTexGeniv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/e;->glGetTexGeniv(II[II)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexGenxv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glGetTexGenxv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3}, Lb0/e;->glGetTexGenxv(IILjava/nio/IntBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexGenxv(II[II)V
    .locals 2

    const-string v0, "glGetTexGenxv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/e;->glGetTexGenxv(II[II)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glGetTexParameterfv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glGetTexParameterfv(IILjava/nio/FloatBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameterfv(II[FI)V
    .locals 2

    const-string v0, "glGetTexParameterfv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glGetTexParameterfv(II[FI)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glGetTexParameteriv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glGetTexParameteriv(IILjava/nio/IntBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameteriv(II[II)V
    .locals 2

    const-string v0, "glGetTexParameteriv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glGetTexEnviv(II[II)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameterxv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glGetTexParameterxv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glGetTexParameterxv(IILjava/nio/IntBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameterxv(II[II)V
    .locals 2

    const-string v0, "glGetTexParameterxv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glGetTexParameterxv(II[II)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glHint(II)V
    .locals 2

    const-string v0, "glHint"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getHintTarget(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "target"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getHintMode(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mode"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glHint(II)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glIsBuffer(I)Z
    .locals 1

    const-string v0, "glIsBuffer"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "buffer"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1}, Lb0/c;->glIsBuffer(I)Z

    move-result p1

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return p1
.end method

.method public glIsEnabled(I)Z
    .locals 1

    const-string v0, "glIsEnabled"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "cap"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1}, Lb0/c;->glIsEnabled(I)Z

    move-result p1

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return p1
.end method

.method public glIsFramebufferOES(I)Z
    .locals 1

    const-string v0, "glIsFramebufferOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "framebuffer"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1}, Lb0/e;->glIsFramebufferOES(I)Z

    move-result p1

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return p1
.end method

.method public glIsRenderbufferOES(I)Z
    .locals 1

    const-string v0, "glIsRenderbufferOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "renderbuffer"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1}, Lb0/e;->glIsRenderbufferOES(I)Z

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    const/4 p1, 0x0

    return p1
.end method

.method public glIsTexture(I)Z
    .locals 1

    const-string v0, "glIsTexture"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "texture"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1}, Lb0/c;->glIsTexture(I)Z

    move-result p1

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return p1
.end method

.method public glLightModelf(IF)V
    .locals 2

    const-string v0, "glLightModelf"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pname"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "param"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glLightModelf(IF)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightModelfv(ILjava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glLightModelfv"

    .line 8
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pname"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelParamCount(I)I

    move-result v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 12
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glLightModelfv(ILjava/nio/FloatBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightModelfv(I[FI)V
    .locals 2

    const-string v0, "glLightModelfv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pname"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelParamCount(I)I

    move-result v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glLightModelfv(I[FI)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightModelx(II)V
    .locals 2

    const-string v0, "glLightModelx"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pname"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "param"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glLightModelx(II)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightModelxv(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glLightModelfv"

    .line 8
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pname"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelParamCount(I)I

    move-result v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 12
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glLightModelxv(ILjava/nio/IntBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightModelxv(I[II)V
    .locals 2

    const-string v0, "glLightModelxv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pname"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelParamCount(I)I

    move-result v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glLightModelxv(I[II)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightf(IIF)V
    .locals 2

    const-string v0, "glLightf"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "light"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pname"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "param"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glLightf(IIF)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightfv(IILjava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glLightfv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "light"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pname"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightParamCount(I)I

    move-result v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glLightfv(IILjava/nio/FloatBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightfv(II[FI)V
    .locals 2

    const-string v0, "glLightfv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "light"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pname"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightParamCount(I)I

    move-result v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/a;->glLightfv(II[FI)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightx(III)V
    .locals 2

    const-string v0, "glLightx"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "light"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pname"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "param"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glLightx(III)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightxv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glLightxv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "light"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pname"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightParamCount(I)I

    move-result v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glLightxv(IILjava/nio/IntBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightxv(II[II)V
    .locals 2

    const-string v0, "glLightxv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "light"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pname"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightParamCount(I)I

    move-result v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/a;->glLightxv(II[II)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLineWidth(F)V
    .locals 1

    const-string v0, "glLineWidth"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "width"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glLineWidth(F)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLineWidthx(I)V
    .locals 1

    const-string v0, "glLineWidthx"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "width"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glLineWidthx(I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLoadIdentity()V
    .locals 1

    const-string v0, "glLoadIdentity"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0}, Lb0/a;->glLoadIdentity()V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLoadMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glLoadMatrixf"

    .line 7
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "m"

    const/16 v1, 0x10

    .line 8
    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 9
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 10
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glLoadMatrixf(Ljava/nio/FloatBuffer;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLoadMatrixf([FI)V
    .locals 2

    const-string v0, "glLoadMatrixf"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "m"

    const/16 v1, 0x10

    .line 2
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string v0, "offset"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glLoadMatrixf([FI)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLoadMatrixx(Ljava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glLoadMatrixx"

    .line 7
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "m"

    const/16 v1, 0x10

    .line 8
    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 9
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 10
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glLoadMatrixx(Ljava/nio/IntBuffer;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLoadMatrixx([II)V
    .locals 2

    const-string v0, "glLoadMatrixx"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "m"

    const/16 v1, 0x10

    .line 2
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string v0, "offset"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glLoadMatrixx([II)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLoadPaletteFromModelViewMatrixOES()V
    .locals 1

    const-string v0, "glLoadPaletteFromModelViewMatrixOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lb0/d;

    invoke-interface {v0}, Lb0/d;->glLoadPaletteFromModelViewMatrixOES()V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLogicOp(I)V
    .locals 1

    const-string v0, "glLogicOp"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "opcode"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glLogicOp(I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMaterialf(IIF)V
    .locals 2

    const-string v0, "glMaterialf"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "face"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pname"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "param"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glMaterialf(IIF)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glMaterialfv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "face"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pname"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialParamCount(I)I

    move-result v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glMaterialfv(IILjava/nio/FloatBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMaterialfv(II[FI)V
    .locals 2

    const-string v0, "glMaterialfv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "face"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pname"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialParamCount(I)I

    move-result v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/a;->glMaterialfv(II[FI)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMaterialx(III)V
    .locals 2

    const-string v0, "glMaterialx"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "face"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pname"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "param"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glMaterialx(III)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMaterialxv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glMaterialxv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "face"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pname"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialParamCount(I)I

    move-result v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glMaterialxv(IILjava/nio/IntBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMaterialxv(II[II)V
    .locals 2

    const-string v0, "glMaterialxv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "face"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pname"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialParamCount(I)I

    move-result v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/a;->glMaterialxv(II[II)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMatrixIndexPointerOES(IIII)V
    .locals 1

    const-string v0, "glMatrixIndexPointerOES"

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

    const-string v0, "offset"

    .line 10
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 12
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lb0/d;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/d;->glMatrixIndexPointerOES(IIII)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMatrixIndexPointerOES(IIILjava/nio/Buffer;)V
    .locals 1

    const-string v0, "glMatrixIndexPointerOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->argPointer(IIILjava/nio/Buffer;)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lb0/d;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/d;->glMatrixIndexPointerOES(IIILjava/nio/Buffer;)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMatrixMode(I)V
    .locals 2

    const-string v0, "glMatrixMode"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getMatrixMode(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mode"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glMatrixMode(I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMultMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glMultMatrixf"

    .line 7
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "m"

    const/16 v1, 0x10

    .line 8
    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 9
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 10
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glMultMatrixf(Ljava/nio/FloatBuffer;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMultMatrixf([FI)V
    .locals 2

    const-string v0, "glMultMatrixf"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "m"

    const/16 v1, 0x10

    .line 2
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string v0, "offset"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glMultMatrixf([FI)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMultMatrixx(Ljava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glMultMatrixx"

    .line 7
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "m"

    const/16 v1, 0x10

    .line 8
    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 9
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 10
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glMultMatrixx(Ljava/nio/IntBuffer;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMultMatrixx([II)V
    .locals 2

    const-string v0, "glMultMatrixx"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "m"

    const/16 v1, 0x10

    .line 2
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string v0, "offset"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glMultMatrixx([II)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMultiTexCoord4f(IFFFF)V
    .locals 7

    const-string v0, "glMultiTexCoord4f"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "s"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "t"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "r"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "q"

    .line 6
    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 8
    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lb0/a;->glMultiTexCoord4f(IFFFF)V

    .line 9
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMultiTexCoord4x(IIIII)V
    .locals 7

    const-string v0, "glMultiTexCoord4x"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "s"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "t"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "r"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "q"

    .line 6
    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 8
    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lb0/a;->glMultiTexCoord4x(IIIII)V

    .line 9
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glNormal3f(FFF)V
    .locals 1

    const-string v0, "glNormal3f"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "nx"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "ny"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "nz"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glNormal3f(FFF)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glNormal3x(III)V
    .locals 1

    const-string v0, "glNormal3x"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "nx"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "ny"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "nz"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glNormal3x(III)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glNormalPointer(III)V
    .locals 1

    const-string v0, "glNormalPointer"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "stride"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "offset"

    .line 12
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glNormalPointer(III)V

    return-void
.end method

.method public glNormalPointer(IILjava/nio/Buffer;)V
    .locals 8

    const-string v0, "glNormalPointer"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "stride"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pointer"

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
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glNormalPointer(IILjava/nio/Buffer;)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glOrthof(FFFFFF)V
    .locals 8

    const-string v0, "glOrthof"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "left"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "right"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "bottom"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "top"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "near"

    .line 6
    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "far"

    .line 7
    invoke-direct {p0, v0, p6}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 9
    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lb0/a;->glOrthof(FFFFFF)V

    .line 10
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glOrthox(IIIIII)V
    .locals 8

    const-string v0, "glOrthox"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "left"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "right"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "bottom"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "top"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "near"

    .line 6
    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "far"

    .line 7
    invoke-direct {p0, v0, p6}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 9
    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lb0/a;->glOrthox(IIIIII)V

    .line 10
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPixelStorei(II)V
    .locals 1

    const-string v0, "glPixelStorei"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "pname"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "param"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glPixelStorei(II)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPointParameterf(IF)V
    .locals 1

    const-string v0, "glPointParameterf"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "pname"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "param"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2}, Lb0/c;->glPointParameterf(IF)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPointParameterfv(ILjava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glPointParameterfv"

    .line 8
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "pname"

    .line 9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 10
    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 12
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2}, Lb0/c;->glPointParameterfv(ILjava/nio/FloatBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPointParameterfv(I[FI)V
    .locals 2

    const-string v0, "glPointParameterfv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "pname"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glPointParameterfv(I[FI)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPointParameterx(II)V
    .locals 1

    const-string v0, "glPointParameterfv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "pname"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "param"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2}, Lb0/c;->glPointParameterx(II)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPointParameterxv(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glPointParameterxv"

    .line 8
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "pname"

    .line 9
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 10
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 12
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2}, Lb0/c;->glPointParameterxv(ILjava/nio/IntBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPointParameterxv(I[II)V
    .locals 2

    const-string v0, "glPointParameterxv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "pname"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offset"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glPointParameterxv(I[II)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPointSize(F)V
    .locals 1

    const-string v0, "glPointSize"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "size"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glPointSize(F)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPointSizePointerOES(IILjava/nio/Buffer;)V
    .locals 2

    const-string v0, "glPointSizePointerOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "stride"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glPointSizePointerOES(IILjava/nio/Buffer;)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPointSizex(I)V
    .locals 1

    const-string v0, "glPointSizex"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "size"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glPointSizex(I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPolygonOffset(FF)V
    .locals 1

    const-string v0, "glPolygonOffset"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "factor"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "units"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glPolygonOffset(FF)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPolygonOffsetx(II)V
    .locals 1

    const-string v0, "glPolygonOffsetx"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "factor"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "units"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glPolygonOffsetx(II)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPopMatrix()V
    .locals 1

    const-string v0, "glPopMatrix"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0}, Lb0/a;->glPopMatrix()V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPushMatrix()V
    .locals 1

    const-string v0, "glPushMatrix"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0}, Lb0/a;->glPushMatrix()V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I
    .locals 3

    const-string v0, "glQueryMatrixxOES"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mantissa"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exponent"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 13
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl10Ext:Lb0/b;

    invoke-interface {v0, p1, p2}, Lb0/b;->glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I

    move-result v0

    const/16 v1, 0x10

    const/4 v2, 0x2

    .line 14
    invoke-direct {p0, v1, v2, p1}, Landroid/opengl/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 15
    invoke-direct {p0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return v0
.end method

.method public glQueryMatrixxOES([II[II)I
    .locals 3

    const-string v0, "glQueryMatrixxOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mantissa"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "exponent"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl10Ext:Lb0/b;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/b;->glQueryMatrixxOES([II[II)I

    move-result v0

    const/16 v1, 0x10

    const/4 v2, 0x2

    .line 6
    invoke-direct {p0, v1, v2, p1, p2}, Landroid/opengl/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, v1, p1, p3, p4}, Landroid/opengl/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return v0
.end method

.method public glReadPixels(IIIIIILjava/nio/Buffer;)V
    .locals 10

    move-object v0, p0

    const-string v1, "glReadPixels"

    .line 1
    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v1, "x"

    move v3, p1

    .line 2
    invoke-direct {p0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "y"

    move v4, p2

    .line 3
    invoke-direct {p0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "width"

    move v5, p3

    .line 4
    invoke-direct {p0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "height"

    move v6, p4

    .line 5
    invoke-direct {p0, v1, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "format"

    move v7, p5

    .line 6
    invoke-direct {p0, v1, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "type"

    move/from16 v8, p6

    .line 7
    invoke-direct {p0, v1, v8}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 8
    invoke-virtual/range {p7 .. p7}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pixels"

    invoke-direct {p0, v2, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 10
    iget-object v2, v0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lb0/a;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glRenderbufferStorageOES(IIII)V
    .locals 1

    const-string v0, "glRenderbufferStorageOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "internalformat"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "width"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "height"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/e;->glRenderbufferStorageOES(IIII)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glRotatef(FFFF)V
    .locals 1

    const-string v0, "glRotatef"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "angle"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "x"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "y"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "z"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/a;->glRotatef(FFFF)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glRotatex(IIII)V
    .locals 1

    const-string v0, "glRotatex"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "angle"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "x"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "y"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "z"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/a;->glRotatex(IIII)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glSampleCoverage(FZ)V
    .locals 1

    const-string v0, "glSampleCoveragex"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "invert"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glSampleCoverage(FZ)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glSampleCoveragex(IZ)V
    .locals 1

    const-string v0, "glSampleCoveragex"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "invert"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glSampleCoveragex(IZ)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glScalef(FFF)V
    .locals 1

    const-string v0, "glScalef"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "x"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "y"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "z"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glScalef(FFF)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glScalex(III)V
    .locals 1

    const-string v0, "glScalex"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "x"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "y"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "z"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glScalex(III)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glScissor(IIII)V
    .locals 1

    const-string v0, "glScissor"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "x"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "y"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "width"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "height"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/a;->glScissor(IIII)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glShadeModel(I)V
    .locals 2

    const-string v0, "glShadeModel"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getShadeModel(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mode"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glShadeModel(I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glStencilFunc(III)V
    .locals 1

    const-string v0, "glStencilFunc"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "func"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "ref"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "mask"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glStencilFunc(III)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glStencilMask(I)V
    .locals 1

    const-string v0, "glStencilMask"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "mask"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glStencilMask(I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glStencilOp(III)V
    .locals 1

    const-string v0, "glStencilOp"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "fail"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "zfail"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "zpass"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glStencilOp(III)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexCoordPointer(IIII)V
    .locals 1

    const-string v0, "glTexCoordPointer"

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

    const-string v0, "offset"

    .line 11
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 13
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glTexCoordPointer(IIII)V

    return-void
.end method

.method public glTexCoordPointer(IIILjava/nio/Buffer;)V
    .locals 7

    const-string v0, "glTexCoordPointer"

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
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/a;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvf(IIF)V
    .locals 2

    const-string v0, "glTexEnvf"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "target"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pname"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p3}, Landroid/opengl/GLLogWrapper;->getTextureEnvParamName(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "param"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glTexEnvf(IIF)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvfv(IILjava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glTexEnvfv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "target"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pname"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvParamCount(I)I

    move-result v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glTexEnvfv(IILjava/nio/FloatBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvfv(II[FI)V
    .locals 2

    const-string v0, "glTexEnvfv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "target"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pname"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvParamCount(I)I

    move-result v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/a;->glTexEnvfv(II[FI)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvi(III)V
    .locals 1

    const-string v0, "glTexEnvi"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "param"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glTexEnvi(III)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexEnviv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glTexEnviv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glTexEnviv(IILjava/nio/IntBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexEnviv(II[II)V
    .locals 2

    const-string v0, "glTexEnviv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glTexEnviv(II[II)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvx(III)V
    .locals 2

    const-string v0, "glTexEnvx"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "target"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pname"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "param"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glTexEnvx(III)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvxv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glTexEnvxv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "target"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pname"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvParamCount(I)I

    move-result v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glTexEnvxv(IILjava/nio/IntBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvxv(II[II)V
    .locals 2

    const-string v0, "glTexEnvxv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "target"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pname"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvParamCount(I)I

    move-result v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/a;->glTexEnvxv(II[II)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexGenf(IIF)V
    .locals 1

    const-string v0, "glTexGenf"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "param"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3}, Lb0/e;->glTexGenf(IIF)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexGenfv(IILjava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glTexGenfv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3}, Lb0/e;->glTexGenfv(IILjava/nio/FloatBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexGenfv(II[FI)V
    .locals 2

    const-string v0, "glTexGenfv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/e;->glTexGenfv(II[FI)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexGeni(III)V
    .locals 1

    const-string v0, "glTexGeni"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "param"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3}, Lb0/e;->glTexGeni(III)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexGeniv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glTexGeniv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3}, Lb0/e;->glTexGeniv(IILjava/nio/IntBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexGeniv(II[II)V
    .locals 2

    const-string v0, "glTexGeniv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/e;->glTexGeniv(II[II)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexGenx(III)V
    .locals 1

    const-string v0, "glTexGenx"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "param"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3}, Lb0/e;->glTexGenx(III)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexGenxv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glTexGenxv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3}, Lb0/e;->glTexGenxv(IILjava/nio/IntBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexGenxv(II[II)V
    .locals 2

    const-string v0, "glTexGenxv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/e;->glTexGenxv(II[II)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 12

    move-object v0, p0

    const-string v1, "glTexImage2D"

    .line 1
    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v1, "target"

    move v3, p1

    .line 2
    invoke-direct {p0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "level"

    move v4, p2

    .line 3
    invoke-direct {p0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "internalformat"

    move v5, p3

    .line 4
    invoke-direct {p0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "width"

    move/from16 v6, p4

    .line 5
    invoke-direct {p0, v1, v6}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "height"

    move/from16 v7, p5

    .line 6
    invoke-direct {p0, v1, v7}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "border"

    move/from16 v8, p6

    .line 7
    invoke-direct {p0, v1, v8}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "format"

    move/from16 v9, p7

    .line 8
    invoke-direct {p0, v1, v9}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "type"

    move/from16 v10, p8

    .line 9
    invoke-direct {p0, v1, v10}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 10
    invoke-virtual/range {p9 .. p9}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pixels"

    invoke-direct {p0, v2, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 12
    iget-object v2, v0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    move-object/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Lb0/a;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexParameterf(IIF)V
    .locals 2

    const-string v0, "glTexParameterf"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "target"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTexturePName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pname"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p3}, Landroid/opengl/GLLogWrapper;->getTextureParamName(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "param"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glTexParameterf(IIF)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glTexParameterfv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glTexParameterfv(IILjava/nio/FloatBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexParameterfv(II[FI)V
    .locals 2

    const-string v0, "glTexParameterfv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glTexParameterfv(II[FI)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexParameteri(III)V
    .locals 1

    const-string v0, "glTexParameterxv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "param"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glTexParameteri(III)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glTexParameteriv"

    .line 8
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "target"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTexturePName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pname"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "params"

    const/4 v1, 0x4

    .line 11
    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 12
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 13
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glTexParameteriv(IILjava/nio/IntBuffer;)V

    .line 14
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexParameteriv(II[II)V
    .locals 2

    const-string v0, "glTexParameteriv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "target"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTexturePName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pname"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "params"

    const/4 v1, 0x4

    .line 4
    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glTexParameteriv(II[II)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexParameterx(III)V
    .locals 2

    const-string v0, "glTexParameterx"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "target"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTexturePName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pname"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "param"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glTexParameterx(III)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexParameterxv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glTexParameterxv"

    .line 9
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 10
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 11
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 14
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glTexParameterxv(IILjava/nio/IntBuffer;)V

    .line 15
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexParameterxv(II[II)V
    .locals 2

    const-string v0, "glTexParameterxv"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pname"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offset"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glTexParameterxv(II[II)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 12

    move-object v0, p0

    const-string v1, "glTexSubImage2D"

    .line 1
    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "target"

    invoke-direct {p0, v2, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "level"

    move v4, p2

    .line 3
    invoke-direct {p0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "xoffset"

    move v5, p3

    .line 4
    invoke-direct {p0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "yoffset"

    move/from16 v6, p4

    .line 5
    invoke-direct {p0, v1, v6}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "width"

    move/from16 v7, p5

    .line 6
    invoke-direct {p0, v1, v7}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "height"

    move/from16 v8, p6

    .line 7
    invoke-direct {p0, v1, v8}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "format"

    move/from16 v9, p7

    .line 8
    invoke-direct {p0, v1, v9}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "type"

    move/from16 v10, p8

    .line 9
    invoke-direct {p0, v1, v10}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 10
    invoke-virtual/range {p9 .. p9}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pixels"

    invoke-direct {p0, v2, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 12
    iget-object v2, v0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    move v3, p1

    move-object/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Lb0/a;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTranslatef(FFF)V
    .locals 1

    const-string v0, "glTranslatef"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "x"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "y"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "z"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glTranslatef(FFF)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTranslatex(III)V
    .locals 1

    const-string v0, "glTranslatex"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "x"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "y"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "z"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 6
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glTranslatex(III)V

    .line 7
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glVertexPointer(IIII)V
    .locals 1

    const-string v0, "glVertexPointer"

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

    const-string v0, "offset"

    .line 11
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 12
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 13
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glVertexPointer(IIII)V

    return-void
.end method

.method public glVertexPointer(IIILjava/nio/Buffer;)V
    .locals 7

    const-string v0, "glVertexPointer"

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
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/a;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glViewport(IIII)V
    .locals 1

    const-string v0, "glViewport"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "x"

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "y"

    .line 3
    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "width"

    .line 4
    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "height"

    .line 5
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 7
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/a;->glViewport(IIII)V

    .line 8
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glWeightPointerOES(IIII)V
    .locals 1

    const-string v0, "glWeightPointerOES"

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

    const-string v0, "offset"

    .line 10
    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 11
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 12
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lb0/d;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/d;->glWeightPointerOES(IIII)V

    .line 13
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glWeightPointerOES(IIILjava/nio/Buffer;)V
    .locals 1

    const-string v0, "glWeightPointerOES"

    .line 1
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->argPointer(IIILjava/nio/Buffer;)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lb0/d;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/d;->glWeightPointerOES(IIILjava/nio/Buffer;)V

    .line 5
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method
