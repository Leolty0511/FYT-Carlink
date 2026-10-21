.class public Landroid/renderscript/Allocation;
.super Landroid/renderscript/BaseObj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Allocation$OnBufferAvailableListener;,
        Landroid/renderscript/Allocation$MipmapControl;
    }
.end annotation


# static fields
.field private static final MAX_NUMBER_IO_INPUT_ALLOC:I = 0x10

.field public static final USAGE_GRAPHICS_CONSTANTS:I = 0x8

.field public static final USAGE_GRAPHICS_RENDER_TARGET:I = 0x10

.field public static final USAGE_GRAPHICS_TEXTURE:I = 0x2

.field public static final USAGE_GRAPHICS_VERTEX:I = 0x4

.field public static final USAGE_IO_INPUT:I = 0x20

.field public static final USAGE_IO_OUTPUT:I = 0x40

.field public static final USAGE_SCRIPT:I = 0x1

.field public static final USAGE_SHARED:I = 0x80

.field static mAllocationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Landroid/renderscript/Allocation;",
            ">;"
        }
    .end annotation
.end field

.field static mBitmapOptions:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field mAdaptedAllocation:Landroid/renderscript/Allocation;

.field mAutoPadding:Z

.field mBitmap:Landroid/graphics/Bitmap;

.field mBufferNotifier:Landroid/renderscript/Allocation$OnBufferAvailableListener;

.field private mByteBuffer:Ljava/nio/ByteBuffer;

.field private mByteBufferStride:J

.field mCurrentCount:I

.field mCurrentDimX:I

.field mCurrentDimY:I

.field mCurrentDimZ:I

.field private mGetSurfaceSurface:Landroid/view/Surface;

.field mMipmapControl:Landroid/renderscript/Allocation$MipmapControl;

.field mOwningType:Z

.field mReadAllowed:Z

.field mSelectedArray:[I

.field mSelectedFace:Landroid/renderscript/Type$CubemapFace;

.field mSelectedLOD:I

.field mSelectedX:I

.field mSelectedY:I

.field mSelectedZ:I

.field mSize:I

.field mTimeStamp:J

.field mType:Landroid/renderscript/Type;

.field mUsage:I

.field mWriteAllowed:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroid/renderscript/Allocation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Landroid/renderscript/Allocation;->mOwningType:Z

    const-wide/16 p2, -0x1

    .line 3
    iput-wide p2, p0, Landroid/renderscript/Allocation;->mTimeStamp:J

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroid/renderscript/Allocation;->mReadAllowed:Z

    .line 5
    iput-boolean v0, p0, Landroid/renderscript/Allocation;->mWriteAllowed:Z

    .line 6
    iput-boolean p1, p0, Landroid/renderscript/Allocation;->mAutoPadding:Z

    .line 7
    sget-object v1, Landroid/renderscript/Type$CubemapFace;->POSITIVE_X:Landroid/renderscript/Type$CubemapFace;

    iput-object v1, p0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Landroid/renderscript/Allocation;->mGetSurfaceSurface:Landroid/view/Surface;

    .line 9
    iput-object v1, p0, Landroid/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 10
    iput-wide p2, p0, Landroid/renderscript/Allocation;->mByteBufferStride:J

    and-int/lit16 p2, p5, -0x100

    if-nez p2, :cond_3

    and-int/lit8 p2, p5, 0x20

    if-eqz p2, :cond_1

    .line 11
    iput-boolean p1, p0, Landroid/renderscript/Allocation;->mWriteAllowed:Z

    and-int/lit8 p2, p5, -0x24

    if-nez p2, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string p2, "Invalid usage combination."

    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_1
    :goto_0
    iput-object p4, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 14
    iput p5, p0, Landroid/renderscript/Allocation;->mUsage:I

    if-eqz p4, :cond_2

    .line 15
    invoke-virtual {p4}, Landroid/renderscript/Type;->getCount()I

    move-result p2

    iget-object p3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {p3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object p3

    invoke-virtual {p3}, Landroid/renderscript/Element;->getBytesSize()I

    move-result p3

    mul-int/2addr p3, p2

    iput p3, p0, Landroid/renderscript/Allocation;->mSize:I

    .line 16
    invoke-direct {p0, p4}, Landroid/renderscript/Allocation;->updateCacheInfo(Landroid/renderscript/Type;)V

    .line 17
    :cond_2
    :try_start_0
    sget-object p2, Landroid/renderscript/RenderScript;->registerNativeAllocation:Ljava/lang/reflect/Method;

    sget-object p3, Landroid/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    new-array p4, v0, [Ljava/lang/Object;

    iget p5, p0, Landroid/renderscript/Allocation;->mSize:I

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, p4, p1

    invoke-virtual {p2, p3, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    iget-object p1, p0, Landroid/renderscript/BaseObj;->guard:Ldalvik/system/CloseGuard;

    const-string p2, "destroy"

    invoke-virtual {p1, p2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Couldn\'t invoke registerNativeAllocation:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "RenderScript_jni"

    invoke-static {p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance p2, Landroid/renderscript/RSRuntimeException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 21
    :cond_3
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string p2, "Unknown usage specified."

    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V
    .locals 6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p6

    .line 22
    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    .line 23
    iput-boolean p5, p0, Landroid/renderscript/Allocation;->mOwningType:Z

    .line 24
    iput-object p7, p0, Landroid/renderscript/Allocation;->mMipmapControl:Landroid/renderscript/Allocation$MipmapControl;

    return-void
.end method

.method private copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 21

    move-object/from16 v7, p0

    const-wide/32 v8, 0x8000

    :try_start_0
    const-string v0, "copy1DRangeFromUnchecked"

    .line 1
    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2
    iget-object v0, v7, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v0}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v0

    mul-int v17, v0, p2

    .line 3
    iget-boolean v0, v7, Landroid/renderscript/Allocation;->mAutoPadding:Z

    if-eqz v0, :cond_0

    iget-object v0, v7, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Element;->getVectorSize()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move/from16 v20, v0

    move-object/from16 v0, p4

    .line 4
    iget v1, v0, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int v4, p5, v1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, v17

    move/from16 v6, v20

    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Allocation;->data1DChecks(IIIIZ)V

    .line 5
    iget-object v10, v7, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v11

    iget v14, v7, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v1, v7, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v1, v1, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v1, v1, Landroid/renderscript/Element$DataType;->mSize:I

    move/from16 v13, p1

    move/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v18, p4

    move/from16 v19, v1

    invoke-virtual/range {v10 .. v20}, Landroid/renderscript/RenderScript;->nAllocationData1D(JIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 21

    move-object/from16 v7, p0

    const-wide/32 v8, 0x8000

    :try_start_0
    const-string v0, "copy1DRangeToUnchecked"

    .line 1
    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2
    iget-object v0, v7, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v0}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v0

    mul-int v17, v0, p2

    .line 3
    iget-boolean v0, v7, Landroid/renderscript/Allocation;->mAutoPadding:Z

    if-eqz v0, :cond_0

    iget-object v0, v7, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Element;->getVectorSize()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move/from16 v20, v0

    move-object/from16 v0, p4

    .line 4
    iget v1, v0, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int v4, p5, v1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, v17

    move/from16 v6, v20

    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Allocation;->data1DChecks(IIIIZ)V

    .line 5
    iget-object v10, v7, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v11

    iget v14, v7, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v1, v7, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v1, v1, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v1, v1, Landroid/renderscript/Element$DataType;->mSize:I

    move/from16 v13, p1

    move/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v18, p4

    move/from16 v19, v1

    invoke-virtual/range {v10 .. v20}, Landroid/renderscript/RenderScript;->nAllocationRead1D(JIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private copy3DRangeFromUnchecked(IIIIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-wide/32 v2, 0x8000

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v0, "copy3DRangeFromUnchecked"

    .line 7
    .line 8
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, v1, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 14
    .line 15
    .line 16
    invoke-direct/range {p0 .. p6}, Landroid/renderscript/Allocation;->validate3DRange(IIIIII)V

    .line 17
    .line 18
    .line 19
    iget-object v0, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 20
    .line 21
    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/renderscript/Element;->getBytesSize()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    mul-int v0, v0, p4

    .line 28
    .line 29
    mul-int v0, v0, p5

    .line 30
    .line 31
    mul-int v0, v0, p6

    .line 32
    .line 33
    move-object/from16 v15, p8

    .line 34
    .line 35
    iget v4, v15, Landroid/renderscript/Element$DataType;->mSize:I

    .line 36
    .line 37
    mul-int v4, v4, p9

    .line 38
    .line 39
    iget-boolean v5, v1, Landroid/renderscript/Allocation;->mAutoPadding:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    const-string v6, "Array too small for allocation type."

    .line 42
    .line 43
    if-eqz v5, :cond_1

    .line 44
    .line 45
    :try_start_1
    iget-object v5, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 46
    .line 47
    invoke-virtual {v5}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {v5}, Landroid/renderscript/Element;->getVectorSize()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    const/4 v7, 0x3

    .line 56
    if-ne v5, v7, :cond_1

    .line 57
    .line 58
    div-int/lit8 v5, v0, 0x4

    .line 59
    .line 60
    mul-int/2addr v5, v7

    .line 61
    if-gt v5, v4, :cond_0

    .line 62
    .line 63
    const/4 v4, 0x1

    .line 64
    move/from16 v18, v4

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    .line 68
    .line 69
    invoke-direct {v0, v6}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v0

    .line 73
    :cond_1
    if-gt v0, v4, :cond_2

    .line 74
    .line 75
    const/4 v0, 0x0

    .line 76
    move/from16 v18, v0

    .line 77
    .line 78
    move v0, v4

    .line 79
    :goto_0
    iget-object v4, v1, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 80
    .line 81
    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    .line 82
    .line 83
    .line 84
    move-result-wide v5

    .line 85
    iget v10, v1, Landroid/renderscript/Allocation;->mSelectedLOD:I

    .line 86
    .line 87
    iget-object v7, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 88
    .line 89
    iget-object v7, v7, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 90
    .line 91
    iget-object v7, v7, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 92
    .line 93
    iget v14, v7, Landroid/renderscript/Element$DataType;->mSize:I

    .line 94
    .line 95
    move/from16 v7, p1

    .line 96
    .line 97
    move/from16 v8, p2

    .line 98
    .line 99
    move/from16 v9, p3

    .line 100
    .line 101
    move/from16 v11, p4

    .line 102
    .line 103
    move/from16 v12, p5

    .line 104
    .line 105
    move/from16 v13, p6

    .line 106
    .line 107
    move/from16 v17, v14

    .line 108
    .line 109
    move-object/from16 v14, p7

    .line 110
    .line 111
    move v15, v0

    .line 112
    move-object/from16 v16, p8

    .line 113
    .line 114
    invoke-virtual/range {v4 .. v18}, Landroid/renderscript/RenderScript;->nAllocationData3D(JIIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    .line 116
    .line 117
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_2
    :try_start_2
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    .line 122
    .line 123
    invoke-direct {v0, v6}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    :catchall_0
    move-exception v0

    .line 128
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 129
    .line 130
    .line 131
    throw v0
.end method

.method private copy3DRangeToUnchecked(IIIIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-wide/32 v2, 0x8000

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v0, "copy3DRangeToUnchecked"

    .line 7
    .line 8
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, v1, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 14
    .line 15
    .line 16
    invoke-direct/range {p0 .. p6}, Landroid/renderscript/Allocation;->validate3DRange(IIIIII)V

    .line 17
    .line 18
    .line 19
    iget-object v0, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 20
    .line 21
    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/renderscript/Element;->getBytesSize()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    mul-int v0, v0, p4

    .line 28
    .line 29
    mul-int v0, v0, p5

    .line 30
    .line 31
    mul-int v0, v0, p6

    .line 32
    .line 33
    move-object/from16 v15, p8

    .line 34
    .line 35
    iget v4, v15, Landroid/renderscript/Element$DataType;->mSize:I

    .line 36
    .line 37
    mul-int v4, v4, p9

    .line 38
    .line 39
    iget-boolean v5, v1, Landroid/renderscript/Allocation;->mAutoPadding:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    const-string v6, "Array too small for allocation type."

    .line 42
    .line 43
    if-eqz v5, :cond_1

    .line 44
    .line 45
    :try_start_1
    iget-object v5, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 46
    .line 47
    invoke-virtual {v5}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {v5}, Landroid/renderscript/Element;->getVectorSize()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    const/4 v7, 0x3

    .line 56
    if-ne v5, v7, :cond_1

    .line 57
    .line 58
    div-int/lit8 v5, v0, 0x4

    .line 59
    .line 60
    mul-int/2addr v5, v7

    .line 61
    if-gt v5, v4, :cond_0

    .line 62
    .line 63
    const/4 v4, 0x1

    .line 64
    move/from16 v18, v4

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    .line 68
    .line 69
    invoke-direct {v0, v6}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v0

    .line 73
    :cond_1
    if-gt v0, v4, :cond_2

    .line 74
    .line 75
    const/4 v0, 0x0

    .line 76
    move/from16 v18, v0

    .line 77
    .line 78
    move v0, v4

    .line 79
    :goto_0
    iget-object v4, v1, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 80
    .line 81
    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    .line 82
    .line 83
    .line 84
    move-result-wide v5

    .line 85
    iget v10, v1, Landroid/renderscript/Allocation;->mSelectedLOD:I

    .line 86
    .line 87
    iget-object v7, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 88
    .line 89
    iget-object v7, v7, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 90
    .line 91
    iget-object v7, v7, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 92
    .line 93
    iget v14, v7, Landroid/renderscript/Element$DataType;->mSize:I

    .line 94
    .line 95
    move/from16 v7, p1

    .line 96
    .line 97
    move/from16 v8, p2

    .line 98
    .line 99
    move/from16 v9, p3

    .line 100
    .line 101
    move/from16 v11, p4

    .line 102
    .line 103
    move/from16 v12, p5

    .line 104
    .line 105
    move/from16 v13, p6

    .line 106
    .line 107
    move/from16 v17, v14

    .line 108
    .line 109
    move-object/from16 v14, p7

    .line 110
    .line 111
    move v15, v0

    .line 112
    move-object/from16 v16, p8

    .line 113
    .line 114
    invoke-virtual/range {v4 .. v18}, Landroid/renderscript/RenderScript;->nAllocationRead3D(JIIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    .line 116
    .line 117
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_2
    :try_start_2
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    .line 122
    .line 123
    invoke-direct {v0, v6}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    :catchall_0
    move-exception v0

    .line 128
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 129
    .line 130
    .line 131
    throw v0
.end method

.method private copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 14

    move-object v11, p0

    const-wide/32 v12, 0x8000

    :try_start_0
    const-string v0, "copyFromUnchecked"

    .line 1
    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2
    iget-object v0, v11, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    iget v7, v11, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    if-lez v7, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    iget v5, v11, Landroid/renderscript/Allocation;->mCurrentDimX:I

    iget v6, v11, Landroid/renderscript/Allocation;->mCurrentDimY:I

    move-object v1, p0

    move-object v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    invoke-direct/range {v1 .. v10}, Landroid/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    goto :goto_0

    .line 5
    :cond_0
    iget v5, v11, Landroid/renderscript/Allocation;->mCurrentDimY:I

    if-lez v5, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 6
    iget v4, v11, Landroid/renderscript/Allocation;->mCurrentDimX:I

    move-object v1, p0

    move-object v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 7
    iget v3, v11, Landroid/renderscript/Allocation;->mCurrentCount:I

    move-object v1, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :goto_0
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 11

    const-wide/32 v0, 0x8000

    :try_start_0
    const-string v2, "copyTo"

    .line 7
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 9
    iget-boolean v2, p0, Landroid/renderscript/Allocation;->mAutoPadding:Z

    const/4 v3, 0x3

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Element;->getVectorSize()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v10, v2

    const-string v2, "Size of output array cannot be smaller than size of allocation."

    if-eqz v10, :cond_2

    .line 10
    :try_start_1
    iget v4, p2, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int/2addr v4, p3

    iget p3, p0, Landroid/renderscript/Allocation;->mSize:I

    div-int/lit8 p3, p3, 0x4

    mul-int/2addr p3, v3

    if-lt v4, p3, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    invoke-direct {p1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    iget v3, p2, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int/2addr v3, p3

    iget p3, p0, Landroid/renderscript/Allocation;->mSize:I

    if-lt v3, p3, :cond_3

    .line 13
    :goto_1
    iget-object v4, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    iget-object p3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object p3, p3, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object p3, p3, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v9, p3, Landroid/renderscript/Element$DataType;->mSize:I

    move-object v7, p1

    move-object v8, p2

    invoke-virtual/range {v4 .. v10}, Landroid/renderscript/RenderScript;->nAllocationRead(JLjava/lang/Object;Landroid/renderscript/Element$DataType;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 15
    :cond_3
    :try_start_2
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    invoke-direct {p1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 16
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method public static createAllocations(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;II)[Landroid/renderscript/Allocation;
    .locals 6

    .line 1
    const-wide/32 v0, 0x8000

    .line 2
    .line 3
    .line 4
    :try_start_0
    const-string v2, "createAllocations"

    .line 5
    .line 6
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    cmp-long v2, v2, v4

    .line 19
    .line 20
    if-eqz v2, :cond_3

    .line 21
    .line 22
    new-array v2, p3, [Landroid/renderscript/Allocation;

    .line 23
    .line 24
    invoke-static {p0, p1, p2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 v3, 0x0

    .line 29
    aput-object p1, v2, v3

    .line 30
    .line 31
    and-int/lit8 p2, p2, 0x20

    .line 32
    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    const/16 p2, 0x10

    .line 36
    .line 37
    if-gt p3, p2, :cond_0

    .line 38
    .line 39
    invoke-virtual {p1, p3}, Landroid/renderscript/Allocation;->setupBufferQueue(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->destroy()V

    .line 44
    .line 45
    .line 46
    new-instance p0, Landroid/renderscript/RSIllegalArgumentException;

    .line 47
    .line 48
    const-string p1, "Exceeds the max number of Allocations allowed: 16"

    .line 49
    .line 50
    invoke-direct {p0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 55
    :goto_1
    if-ge p1, p3, :cond_2

    .line 56
    .line 57
    aget-object p2, v2, v3

    .line 58
    .line 59
    invoke-static {p0, p2}, Landroid/renderscript/Allocation;->createFromAllocation(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/Allocation;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    aput-object p2, v2, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    add-int/lit8 p1, p1, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 69
    .line 70
    .line 71
    return-object v2

    .line 72
    :cond_3
    :try_start_1
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    .line 73
    .line 74
    const-string p1, "Bad Type"

    .line 75
    .line 76
    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 82
    .line 83
    .line 84
    throw p0
.end method

.method public static createCubemapFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;
    .locals 2

    .line 19
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->createCubemapFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p0

    return-object p0
.end method

.method public static createCubemapFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 4
    rem-int/lit8 v2, v1, 0x6

    if-nez v2, :cond_5

    .line 5
    div-int/lit8 v1, v1, 0x6

    if-ne v1, v0, :cond_4

    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_3

    .line 6
    invoke-static {p0, p1}, Landroid/renderscript/Allocation;->elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;

    move-result-object v8

    .line 7
    new-instance v1, Landroid/renderscript/Type$Builder;

    invoke-direct {v1, p0, v8}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 8
    invoke-virtual {v1, v0}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 9
    invoke-virtual {v1, v0}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 10
    invoke-virtual {v1, v3}, Landroid/renderscript/Type$Builder;->setFaces(Z)Landroid/renderscript/Type$Builder;

    .line 11
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    if-ne p2, v0, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setMipmaps(Z)Landroid/renderscript/Type$Builder;

    .line 12
    invoke-virtual {v1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v9

    .line 13
    invoke-virtual {v9, p0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    iget v3, p2, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    move-object v0, p0

    move-object v4, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nAllocationCubeCreateFromBitmap(JILandroid/graphics/Bitmap;I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_2

    .line 14
    new-instance v8, Landroid/renderscript/Allocation;

    const/4 v5, 0x1

    move-object v0, v8

    move-object v3, p0

    move-object v4, v9

    move v6, p3

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V

    return-object v8

    .line 15
    :cond_2
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Load failed for bitmap "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " element "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_3
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Only power of 2 cube faces supported"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_4
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Only square cube map faces supported"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_5
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Cubemap height must be multiple of 6"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createCubemapFromCubeFaces(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;
    .locals 9

    .line 31
    sget-object v7, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v8, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v8}, Landroid/renderscript/Allocation;->createCubemapFromCubeFaces(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p0

    return-object p0
.end method

.method public static createCubemapFromCubeFaces(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 3
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, v0, :cond_3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 4
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, v0, :cond_3

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 5
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, v0, :cond_3

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 6
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, v0, :cond_3

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 7
    invoke-virtual {p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, v0, :cond_3

    invoke-virtual {p6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v1, v0, :cond_3

    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 8
    invoke-static {p0, p1}, Landroid/renderscript/Allocation;->elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;

    move-result-object v1

    .line 9
    new-instance v4, Landroid/renderscript/Type$Builder;

    invoke-direct {v4, p0, v1}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 10
    invoke-virtual {v4, v0}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 11
    invoke-virtual {v4, v0}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 12
    invoke-virtual {v4, v3}, Landroid/renderscript/Type$Builder;->setFaces(Z)Landroid/renderscript/Type$Builder;

    .line 13
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    if-ne p7, v0, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v4, v2}, Landroid/renderscript/Type$Builder;->setMipmaps(Z)Landroid/renderscript/Type$Builder;

    .line 14
    invoke-virtual {v4}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v0

    .line 15
    invoke-static {p0, v0, p7, p8}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p7

    .line 16
    invoke-static {p0, p7}, Landroid/renderscript/AllocationAdapter;->create2D(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/AllocationAdapter;

    move-result-object p0

    .line 17
    sget-object p8, Landroid/renderscript/Type$CubemapFace;->POSITIVE_X:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {p0, p8}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    .line 18
    invoke-virtual {p0, p1}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 19
    sget-object p1, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_X:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {p0, p1}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    .line 20
    invoke-virtual {p0, p2}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 21
    sget-object p1, Landroid/renderscript/Type$CubemapFace;->POSITIVE_Y:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {p0, p1}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    .line 22
    invoke-virtual {p0, p3}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 23
    sget-object p1, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_Y:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {p0, p1}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    .line 24
    invoke-virtual {p0, p4}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 25
    sget-object p1, Landroid/renderscript/Type$CubemapFace;->POSITIVE_Z:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {p0, p1}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    .line 26
    invoke-virtual {p0, p5}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 27
    sget-object p1, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_Z:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {p0, p1}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    .line 28
    invoke-virtual {p0, p6}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    return-object p7

    .line 29
    :cond_2
    new-instance p0, Landroid/renderscript/RSIllegalArgumentException;

    const-string p1, "Only power of 2 cube faces supported"

    invoke-direct {p0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 30
    :cond_3
    new-instance p0, Landroid/renderscript/RSIllegalArgumentException;

    const-string p1, "Only square cube map faces supported"

    invoke-direct {p0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createFromAllocation(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/Allocation;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    const-wide/32 v10, 0x8000

    .line 6
    .line 7
    .line 8
    :try_start_0
    const-string v1, "createFromAllcation"

    .line 9
    .line 10
    invoke-static {v10, v11, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v9, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    const-wide/16 v12, 0x0

    .line 21
    .line 22
    cmp-long v1, v1, v12

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-virtual/range {p1 .. p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    invoke-virtual/range {p1 .. p1}, Landroid/renderscript/Allocation;->getUsage()I

    .line 31
    .line 32
    .line 33
    move-result v14

    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/renderscript/Allocation;->getMipmap()Landroid/renderscript/Allocation$MipmapControl;

    .line 35
    .line 36
    .line 37
    move-result-object v15

    .line 38
    invoke-virtual {v8, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    iget v4, v15, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    .line 43
    .line 44
    const-wide/16 v6, 0x0

    .line 45
    .line 46
    move-object/from16 v1, p0

    .line 47
    .line 48
    move v5, v14

    .line 49
    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->nAllocationCreateTyped(JIIJ)J

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    cmp-long v1, v2, v12

    .line 54
    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    new-instance v12, Landroid/renderscript/Allocation;

    .line 58
    .line 59
    const/4 v6, 0x0

    .line 60
    move-object v1, v12

    .line 61
    move-object/from16 v4, p0

    .line 62
    .line 63
    move-object v5, v8

    .line 64
    move v7, v14

    .line 65
    move-object v8, v15

    .line 66
    invoke-direct/range {v1 .. v8}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V

    .line 67
    .line 68
    .line 69
    and-int/lit8 v0, v14, 0x20

    .line 70
    .line 71
    if-eqz v0, :cond_0

    .line 72
    .line 73
    invoke-virtual {v12, v9}, Landroid/renderscript/Allocation;->shareBufferQueue(Landroid/renderscript/Allocation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    .line 76
    :cond_0
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 77
    .line 78
    .line 79
    return-object v12

    .line 80
    :cond_1
    :try_start_1
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    .line 81
    .line 82
    const-string v1, "Allocation creation failed."

    .line 83
    .line 84
    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v0

    .line 88
    :cond_2
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    .line 89
    .line 90
    const-string v1, "Bad input Allocation"

    .line 91
    .line 92
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 98
    .line 99
    .line 100
    throw v0
.end method

.method public static createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;
    .locals 2

    .line 23
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 24
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/16 v1, 0x83

    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p0

    return-object p0

    .line 25
    :cond_0
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p0

    return-object p0
.end method

.method public static createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v8, p2

    move/from16 v7, p3

    const-wide/32 v10, 0x8000

    :try_start_0
    const-string v1, "createFromBitmap"

    .line 1
    invoke-static {v10, v11, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-nez v1, :cond_1

    and-int/lit16 v1, v7, 0x80

    if-nez v1, :cond_0

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 5
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v2, v9, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 7
    invoke-static {v0, v1, v8, v7}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    .line 9
    :cond_0
    :try_start_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "USAGE_SHARED cannot be used with a Bitmap that has a null config."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_1
    invoke-static/range {p0 .. p2}, Landroid/renderscript/Allocation;->typeFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Type;

    move-result-object v12

    .line 11
    sget-object v1, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v13, "Load failed."

    const-wide/16 v14, 0x0

    if-ne v8, v1, :cond_3

    .line 12
    :try_start_2
    invoke-virtual {v12}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-static/range {p0 .. p0}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x83

    if-ne v7, v1, :cond_3

    .line 13
    invoke-virtual {v12, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    iget v4, v8, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->nAllocationCreateBitmapBackedAllocation(JILandroid/graphics/Bitmap;I)J

    move-result-wide v2

    cmp-long v1, v2, v14

    if-eqz v1, :cond_2

    .line 14
    new-instance v13, Landroid/renderscript/Allocation;

    const/4 v6, 0x1

    move-object v1, v13

    move-object/from16 v4, p0

    move-object v5, v12

    move/from16 v7, p3

    move-object/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V

    .line 15
    invoke-direct {v13, v9}, Landroid/renderscript/Allocation;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return-object v13

    .line 17
    :cond_2
    :try_start_3
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    invoke-direct {v0, v13}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_3
    invoke-virtual {v12, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    iget v4, v8, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->nAllocationCreateFromBitmap(JILandroid/graphics/Bitmap;I)J

    move-result-wide v2

    cmp-long v1, v2, v14

    if-eqz v1, :cond_4

    .line 19
    new-instance v9, Landroid/renderscript/Allocation;

    const/4 v6, 0x1

    move-object v1, v9

    move-object/from16 v4, p0

    move-object v5, v12

    move/from16 v7, p3

    move-object/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 20
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return-object v9

    .line 21
    :cond_4
    :try_start_4
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    invoke-direct {v0, v13}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    .line 22
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public static createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroid/renderscript/Allocation;
    .locals 2

    .line 6
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 7
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x3

    invoke-static {p0, p1, p2, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x2

    invoke-static {p0, p1, p2, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p0

    return-object p0
.end method

.method public static createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    and-int/lit16 v0, p4, 0xe0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3
    invoke-static {p0, p1, p3, p4}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p0

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Landroid/renderscript/RSIllegalArgumentException;

    const-string p1, "Unsupported usage specified."

    invoke-direct {p0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createFromString(Landroid/renderscript/RenderScript;Ljava/lang/String;I)Landroid/renderscript/Allocation;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    const-string v0, "UTF-8"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p0}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    array-length v1, p1

    .line 15
    invoke-static {p0, v0, v1, p2}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0, p1}, Landroid/renderscript/Allocation;->copyFrom([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    return-object p0

    .line 23
    :catch_0
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 24
    .line 25
    const-string p1, "Could not convert string to utf-8."

    .line 26
    .line 27
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method public static createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;
    .locals 1

    const/4 v0, 0x1

    .line 11
    invoke-static {p0, p1, p2, v0}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object p0

    return-object p0
.end method

.method public static createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;
    .locals 13

    move-object v0, p0

    const-wide/32 v9, 0x8000

    :try_start_0
    const-string v1, "createSized"

    .line 1
    invoke-static {v9, v10, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    new-instance v1, Landroid/renderscript/Type$Builder;

    move-object v2, p1

    invoke-direct {v1, p0, p1}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    move v2, p2

    .line 4
    invoke-virtual {v1, p2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 5
    invoke-virtual {v1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v8

    .line 6
    invoke-virtual {v8, p0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    sget-object v11, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    iget v4, v11, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    const-wide/16 v6, 0x0

    move-object v1, p0

    move/from16 v5, p3

    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->nAllocationCreateTyped(JIIJ)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 7
    new-instance v12, Landroid/renderscript/Allocation;

    const/4 v6, 0x1

    move-object v1, v12

    move-object v4, p0

    move-object v5, v8

    move/from16 v7, p3

    move-object v8, v11

    invoke-direct/range {v1 .. v8}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    return-object v12

    .line 9
    :cond_0
    :try_start_1
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Allocation creation failed."

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 10
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public static createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;
    .locals 2

    .line 11
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p0

    return-object p0
.end method

.method public static createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;
    .locals 1

    .line 10
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {p0, p1, v0, p2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p0

    return-object p0
.end method

.method public static createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .locals 14

    move-object v0, p0

    move-object v8, p1

    const-wide/32 v9, 0x8000

    :try_start_0
    const-string v1, "createTyped"

    .line 1
    invoke-static {v9, v10, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    invoke-virtual {p1, p0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    const-wide/16 v11, 0x0

    cmp-long v1, v1, v11

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p1, p0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    move-object/from16 v13, p2

    iget v4, v13, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    const-wide/16 v6, 0x0

    move-object v1, p0

    move/from16 v5, p3

    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->nAllocationCreateTyped(JIIJ)J

    move-result-wide v2

    cmp-long v1, v2, v11

    if-eqz v1, :cond_0

    .line 5
    new-instance v11, Landroid/renderscript/Allocation;

    const/4 v6, 0x0

    move-object v1, v11

    move-object v4, p0

    move-object v5, p1

    move/from16 v7, p3

    move-object/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;ZILandroid/renderscript/Allocation$MipmapControl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    return-object v11

    .line 7
    :cond_0
    :try_start_1
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Allocation creation failed."

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_1
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Bad Type"

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 9
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private data1DChecks(IIIIZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 4
    .line 5
    .line 6
    if-ltz p1, :cond_5

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    if-lt p2, v0, :cond_4

    .line 10
    .line 11
    add-int v0, p1, p2

    .line 12
    .line 13
    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    .line 14
    .line 15
    if-gt v0, v1, :cond_3

    .line 16
    .line 17
    const-string p1, "Array too small for allocation type."

    .line 18
    .line 19
    if-eqz p5, :cond_1

    .line 20
    .line 21
    div-int/lit8 p4, p4, 0x4

    .line 22
    .line 23
    mul-int/lit8 p4, p4, 0x3

    .line 24
    .line 25
    if-lt p3, p4, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p2, Landroid/renderscript/RSIllegalArgumentException;

    .line 29
    .line 30
    invoke-direct {p2, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p2

    .line 34
    :cond_1
    if-lt p3, p4, :cond_2

    .line 35
    .line 36
    :goto_0
    return-void

    .line 37
    :cond_2
    new-instance p2, Landroid/renderscript/RSIllegalArgumentException;

    .line 38
    .line 39
    invoke-direct {p2, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p2

    .line 43
    :cond_3
    new-instance p3, Landroid/renderscript/RSIllegalArgumentException;

    .line 44
    .line 45
    new-instance p4, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string p5, "Overflow, Available count "

    .line 48
    .line 49
    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget p5, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    .line 53
    .line 54
    const-string v0, ", got "

    .line 55
    .line 56
    const-string v1, " at offset "

    .line 57
    .line 58
    invoke-static {p4, p5, v0, p2, v1}, Landroid/app/m;->u(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string p2, "."

    .line 62
    .line 63
    invoke-static {p4, p1, p2}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-direct {p3, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p3

    .line 71
    :cond_4
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    .line 72
    .line 73
    const-string p2, "Count must be >= 1."

    .line 74
    .line 75
    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1

    .line 79
    :cond_5
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    .line 80
    .line 81
    const-string p2, "Offset must be >= 0."

    .line 82
    .line 83
    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p1
.end method

.method public static elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    invoke-static {p0}, Landroid/renderscript/Element;->A_8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 15
    .line 16
    if-ne p1, v0, :cond_1

    .line 17
    .line 18
    invoke-static {p0}, Landroid/renderscript/Element;->RGBA_4444(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 24
    .line 25
    if-ne p1, v0, :cond_2

    .line 26
    .line 27
    invoke-static {p0}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 33
    .line 34
    if-ne p1, v0, :cond_3

    .line 35
    .line 36
    invoke-static {p0}, Landroid/renderscript/Element;->RGB_565(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_3
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v1, "Bad bitmap type: "

    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0
.end method

.method private getIDSafe()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0

    .line 12
    :cond_0
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    return-wide v0
.end method

.method public static sendBufferNotification(J)V
    .locals 3

    .line 1
    sget-object v0, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    .line 5
    .line 6
    new-instance v2, Ljava/lang/Long;

    .line 7
    .line 8
    invoke-direct {v2, p0, p1}, Ljava/lang/Long;-><init>(J)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/renderscript/Allocation;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Landroid/renderscript/Allocation;->mBufferNotifier:Landroid/renderscript/Allocation$OnBufferAvailableListener;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-interface {p1, p0}, Landroid/renderscript/Allocation$OnBufferAvailableListener;->onBufferAvailable(Landroid/renderscript/Allocation;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Landroid/renderscript/Allocation;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static typeFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Type;
    .locals 2

    .line 1
    invoke-static {p0, p1}, Landroid/renderscript/Allocation;->elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/renderscript/Type$Builder;

    .line 6
    .line 7
    invoke-direct {v1, p0, v0}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    invoke-virtual {v1, p0}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-virtual {v1, p0}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 22
    .line 23
    .line 24
    sget-object p0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    .line 25
    .line 26
    if-ne p2, p0, :cond_0

    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    :goto_0
    invoke-virtual {v1, p0}, Landroid/renderscript/Type$Builder;->setMipmaps(Z)Landroid/renderscript/Type$Builder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method private updateCacheInfo(Landroid/renderscript/Type;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/renderscript/Type;->getX()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/renderscript/Type;->getY()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/renderscript/Type;->getZ()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    .line 18
    .line 19
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    .line 20
    .line 21
    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    .line 22
    .line 23
    iget v1, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    if-le v1, v2, :cond_0

    .line 27
    .line 28
    mul-int/2addr v0, v1

    .line 29
    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    .line 30
    .line 31
    :cond_0
    if-le p1, v2, :cond_1

    .line 32
    .line 33
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    .line 34
    .line 35
    mul-int/2addr v0, p1

    .line 36
    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method private validate2DRange(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    if-ltz p1, :cond_3

    .line 7
    .line 8
    if-ltz p2, :cond_3

    .line 9
    .line 10
    if-ltz p4, :cond_2

    .line 11
    .line 12
    if-ltz p3, :cond_2

    .line 13
    .line 14
    add-int/2addr p1, p3

    .line 15
    iget p3, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    .line 16
    .line 17
    if-gt p1, p3, :cond_1

    .line 18
    .line 19
    add-int/2addr p2, p4

    .line 20
    iget p1, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    .line 21
    .line 22
    if-gt p2, p1, :cond_1

    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :cond_1
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    .line 26
    .line 27
    const-string p2, "Updated region larger than allocation."

    .line 28
    .line 29
    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_2
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    .line 34
    .line 35
    const-string p2, "Height or width cannot be negative."

    .line 36
    .line 37
    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :cond_3
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    .line 42
    .line 43
    const-string p2, "Offset cannot be negative."

    .line 44
    .line 45
    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1
.end method

.method private validate3DRange(IIIIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    if-ltz p1, :cond_3

    .line 7
    .line 8
    if-ltz p2, :cond_3

    .line 9
    .line 10
    if-ltz p3, :cond_3

    .line 11
    .line 12
    if-ltz p5, :cond_2

    .line 13
    .line 14
    if-ltz p4, :cond_2

    .line 15
    .line 16
    if-ltz p6, :cond_2

    .line 17
    .line 18
    add-int/2addr p1, p4

    .line 19
    iget p4, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    .line 20
    .line 21
    if-gt p1, p4, :cond_1

    .line 22
    .line 23
    add-int/2addr p2, p5

    .line 24
    iget p1, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    .line 25
    .line 26
    if-gt p2, p1, :cond_1

    .line 27
    .line 28
    add-int/2addr p3, p6

    .line 29
    iget p1, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    .line 30
    .line 31
    if-gt p3, p1, :cond_1

    .line 32
    .line 33
    :goto_0
    return-void

    .line 34
    :cond_1
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    .line 35
    .line 36
    const-string p2, "Updated region larger than allocation."

    .line 37
    .line 38
    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_2
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    .line 43
    .line 44
    const-string p2, "Height or width cannot be negative."

    .line 45
    .line 46
    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_3
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    .line 51
    .line 52
    const-string p2, "Offset cannot be negative."

    .line 53
    .line 54
    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1
.end method

.method private validateBitmapFormat(Landroid/graphics/Bitmap;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_8

    .line 6
    .line 7
    sget-object v0, Landroid/renderscript/Allocation$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    aget v0, v0, v1

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, " bytes, passed bitmap was "

    .line 17
    .line 18
    const-string v3, " of "

    .line 19
    .line 20
    const-string v4, ", type "

    .line 21
    .line 22
    const-string v5, "Allocation kind is "

    .line 23
    .line 24
    if-eq v0, v1, :cond_6

    .line 25
    .line 26
    const/4 v1, 0x4

    .line 27
    const/4 v6, 0x2

    .line 28
    if-eq v0, v6, :cond_4

    .line 29
    .line 30
    const/4 v7, 0x3

    .line 31
    if-eq v0, v7, :cond_2

    .line 32
    .line 33
    if-eq v0, v1, :cond_0

    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v0, v0, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    .line 44
    .line 45
    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    .line 46
    .line 47
    if-ne v0, v1, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/renderscript/Element;->getBytesSize()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-ne v0, v6, :cond_1

    .line 60
    .line 61
    goto/16 :goto_0

    .line 62
    .line 63
    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    .line 64
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v5, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 71
    .line 72
    invoke-virtual {v5}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    iget-object v5, v5, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    .line 77
    .line 78
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-object v4, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 85
    .line 86
    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    iget-object v4, v4, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 91
    .line 92
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 99
    .line 100
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-direct {v0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v0

    .line 125
    :cond_2
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 126
    .line 127
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    iget-object v0, v0, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    .line 132
    .line 133
    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    .line 134
    .line 135
    if-ne v0, v1, :cond_3

    .line 136
    .line 137
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 138
    .line 139
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/renderscript/Element;->getBytesSize()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-ne v0, v6, :cond_3

    .line 148
    .line 149
    goto/16 :goto_0

    .line 150
    .line 151
    :cond_3
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    .line 152
    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget-object v5, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 159
    .line 160
    invoke-virtual {v5}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    iget-object v5, v5, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    .line 165
    .line 166
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    iget-object v4, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 173
    .line 174
    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    iget-object v4, v4, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 179
    .line 180
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 187
    .line 188
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-direct {v0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw v0

    .line 213
    :cond_4
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 214
    .line 215
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    iget-object v0, v0, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    .line 220
    .line 221
    sget-object v6, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    .line 222
    .line 223
    if-ne v0, v6, :cond_5

    .line 224
    .line 225
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 226
    .line 227
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {v0}, Landroid/renderscript/Element;->getBytesSize()I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-ne v0, v1, :cond_5

    .line 236
    .line 237
    goto :goto_0

    .line 238
    :cond_5
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    .line 239
    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    iget-object v5, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 246
    .line 247
    invoke-virtual {v5}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    iget-object v5, v5, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    .line 252
    .line 253
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    iget-object v4, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 260
    .line 261
    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    iget-object v4, v4, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 266
    .line 267
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 274
    .line 275
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    .line 280
    .line 281
    .line 282
    move-result v3

    .line 283
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    invoke-direct {v0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    throw v0

    .line 300
    :cond_6
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 301
    .line 302
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    iget-object v0, v0, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    .line 307
    .line 308
    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    .line 309
    .line 310
    if-ne v0, v1, :cond_7

    .line 311
    .line 312
    :goto_0
    return-void

    .line 313
    :cond_7
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    .line 314
    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    iget-object v5, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 321
    .line 322
    invoke-virtual {v5}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    .line 323
    .line 324
    .line 325
    move-result-object v5

    .line 326
    iget-object v5, v5, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    .line 327
    .line 328
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    iget-object v4, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 335
    .line 336
    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    iget-object v4, v4, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 341
    .line 342
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    iget-object v3, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 349
    .line 350
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    .line 355
    .line 356
    .line 357
    move-result v3

    .line 358
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object p1

    .line 371
    invoke-direct {v0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    throw v0

    .line 375
    :cond_8
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    .line 376
    .line 377
    const-string v0, "Bitmap has an unsupported format for this operation"

    .line 378
    .line 379
    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    throw p1
.end method

.method private validateBitmapSize(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-ne v0, p1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    .line 19
    .line 20
    const-string v0, "Cannot update allocation from bitmap, sizes mismatch"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method private validateIsFloat32()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 4
    .line 5
    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 6
    .line 7
    sget-object v1, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "32 bit float source does not match allocation type "

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 22
    .line 23
    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 24
    .line 25
    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method

.method private validateIsFloat64()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 4
    .line 5
    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 6
    .line 7
    sget-object v1, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "64 bit float source does not match allocation type "

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 22
    .line 23
    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 24
    .line 25
    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method

.method private validateIsInt16OrFloat16()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 4
    .line 5
    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 6
    .line 7
    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    .line 12
    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    sget-object v1, Landroid/renderscript/Element$DataType;->FLOAT_16:Landroid/renderscript/Element$DataType;

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "16 bit integer source does not match allocation type "

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 30
    .line 31
    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 32
    .line 33
    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_1
    :goto_0
    return-void
.end method

.method private validateIsInt32()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 4
    .line 5
    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 6
    .line 7
    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "32 bit integer source does not match allocation type "

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 26
    .line 27
    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 28
    .line 29
    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_1
    :goto_0
    return-void
.end method

.method private validateIsInt64()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 4
    .line 5
    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 6
    .line 7
    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "64 bit integer source does not match allocation type "

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 26
    .line 27
    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 28
    .line 29
    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_1
    :goto_0
    return-void
.end method

.method private validateIsInt8()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 4
    .line 5
    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 6
    .line 7
    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "8 bit integer source does not match allocation type "

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 26
    .line 27
    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 28
    .line 29
    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_1
    :goto_0
    return-void
.end method

.method private validateIsObject()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 4
    .line 5
    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 6
    .line 7
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_ELEMENT:Landroid/renderscript/Element$DataType;

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_TYPE:Landroid/renderscript/Element$DataType;

    .line 12
    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/renderscript/Element$DataType;

    .line 16
    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_SAMPLER:Landroid/renderscript/Element$DataType;

    .line 20
    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_SCRIPT:Landroid/renderscript/Element$DataType;

    .line 24
    .line 25
    if-eq v0, v1, :cond_1

    .line 26
    .line 27
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_MESH:Landroid/renderscript/Element$DataType;

    .line 28
    .line 29
    if-eq v0, v1, :cond_1

    .line 30
    .line 31
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_FRAGMENT:Landroid/renderscript/Element$DataType;

    .line 32
    .line 33
    if-eq v0, v1, :cond_1

    .line 34
    .line 35
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_VERTEX:Landroid/renderscript/Element$DataType;

    .line 36
    .line 37
    if-eq v0, v1, :cond_1

    .line 38
    .line 39
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_RASTER:Landroid/renderscript/Element$DataType;

    .line 40
    .line 41
    if-eq v0, v1, :cond_1

    .line 42
    .line 43
    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_STORE:Landroid/renderscript/Element$DataType;

    .line 44
    .line 45
    if-ne v0, v1, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v2, "Object source does not match allocation type "

    .line 53
    .line 54
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 58
    .line 59
    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 60
    .line 61
    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v0

    .line 74
    :cond_1
    :goto_0
    return-void
.end method

.method private validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_d

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_c

    .line 20
    .line 21
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 22
    .line 23
    if-ne p1, v0, :cond_1

    .line 24
    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt64()V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 31
    .line 32
    iget-object p1, p1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 33
    .line 34
    iget-object p1, p1, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_0
    sget-object p1, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    .line 38
    .line 39
    return-object p1

    .line 40
    :cond_1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 41
    .line 42
    if-ne p1, v0, :cond_3

    .line 43
    .line 44
    if-eqz p2, :cond_2

    .line 45
    .line 46
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 50
    .line 51
    iget-object p1, p1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 52
    .line 53
    iget-object p1, p1, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 54
    .line 55
    return-object p1

    .line 56
    :cond_2
    sget-object p1, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    .line 57
    .line 58
    return-object p1

    .line 59
    :cond_3
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 60
    .line 61
    if-ne p1, v0, :cond_5

    .line 62
    .line 63
    if-eqz p2, :cond_4

    .line 64
    .line 65
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 69
    .line 70
    iget-object p1, p1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 71
    .line 72
    iget-object p1, p1, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 73
    .line 74
    return-object p1

    .line 75
    :cond_4
    sget-object p1, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    .line 76
    .line 77
    return-object p1

    .line 78
    :cond_5
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 79
    .line 80
    if-ne p1, v0, :cond_7

    .line 81
    .line 82
    if-eqz p2, :cond_6

    .line 83
    .line 84
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 88
    .line 89
    iget-object p1, p1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 90
    .line 91
    iget-object p1, p1, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 92
    .line 93
    return-object p1

    .line 94
    :cond_6
    sget-object p1, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    .line 95
    .line 96
    return-object p1

    .line 97
    :cond_7
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 98
    .line 99
    if-ne p1, v0, :cond_9

    .line 100
    .line 101
    if-eqz p2, :cond_8

    .line 102
    .line 103
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    .line 104
    .line 105
    .line 106
    :cond_8
    sget-object p1, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    .line 107
    .line 108
    return-object p1

    .line 109
    :cond_9
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 110
    .line 111
    if-ne p1, v0, :cond_b

    .line 112
    .line 113
    if-eqz p2, :cond_a

    .line 114
    .line 115
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat64()V

    .line 116
    .line 117
    .line 118
    :cond_a
    sget-object p1, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    .line 119
    .line 120
    return-object p1

    .line 121
    :cond_b
    new-instance p2, Landroid/renderscript/RSIllegalArgumentException;

    .line 122
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    const-string v1, "Parameter of type "

    .line 126
    .line 127
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string p1, "[] is not compatible with data type "

    .line 138
    .line 139
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 143
    .line 144
    iget-object p1, p1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 145
    .line 146
    iget-object p1, p1, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string p1, " of allocation"

    .line 156
    .line 157
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-direct {p2, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p2

    .line 168
    :cond_c
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    .line 169
    .line 170
    const-string p2, "Object passed is not an Array of primitives."

    .line 171
    .line 172
    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw p1

    .line 176
    :cond_d
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    .line 177
    .line 178
    const-string p2, "Object passed is not an array of primitives."

    .line 179
    .line 180
    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p1
.end method


# virtual methods
.method public copy1DRangeFrom(IILandroid/renderscript/Allocation;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-string v2, "copy1DRangeFrom"

    const-wide/32 v3, 0x8000

    .line 12
    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 13
    iget-object v5, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v6

    const/4 v9, 0x0

    iget v10, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v2, v0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v11, v2, Landroid/renderscript/Type$CubemapFace;->mID:I

    const/4 v13, 0x1

    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 14
    invoke-virtual {v1, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v14

    const/16 v17, 0x0

    iget v2, v1, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v1, v1, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v1, v1, Landroid/renderscript/Type$CubemapFace;->mID:I

    move/from16 v8, p1

    move/from16 v12, p2

    move/from16 v16, p4

    move/from16 v18, v2

    move/from16 v19, v1

    .line 15
    invoke-virtual/range {v5 .. v19}, Landroid/renderscript/RenderScript;->nAllocationData2D(JIIIIIIJIIII)V

    .line 16
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public copy1DRangeFrom(IILjava/lang/Object;)V
    .locals 7

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p3, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v5

    .line 2
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    .line 3
    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeFrom(II[B)V
    .locals 6

    .line 8
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    .line 9
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeFrom(II[F)V
    .locals 6

    .line 10
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    .line 11
    sget-object v4, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeFrom(II[I)V
    .locals 6

    .line 4
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    .line 5
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeFrom(II[S)V
    .locals 6

    .line 6
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    .line 7
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeFromUnchecked(IILjava/lang/Object;)V
    .locals 7

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p3, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v5

    .line 8
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    .line 9
    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeFromUnchecked(II[B)V
    .locals 6

    .line 12
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeFromUnchecked(II[F)V
    .locals 6

    .line 13
    sget-object v4, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeFromUnchecked(II[I)V
    .locals 6

    .line 10
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeFromUnchecked(II[S)V
    .locals 6

    .line 11
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeTo(IILjava/lang/Object;)V
    .locals 7

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p3, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v5

    .line 2
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    .line 3
    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeTo(II[B)V
    .locals 6

    .line 8
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    .line 9
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeTo(II[F)V
    .locals 6

    .line 10
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    .line 11
    sget-object v4, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeTo(II[I)V
    .locals 6

    .line 4
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    .line 5
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeTo(II[S)V
    .locals 6

    .line 6
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    .line 7
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeToUnchecked(IILjava/lang/Object;)V
    .locals 7

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p3, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v5

    .line 8
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    .line 9
    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeToUnchecked(II[B)V
    .locals 6

    .line 12
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeToUnchecked(II[F)V
    .locals 6

    .line 13
    sget-object v4, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeToUnchecked(II[I)V
    .locals 6

    .line 10
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy1DRangeToUnchecked(II[S)V
    .locals 6

    .line 11
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy2DRangeFrom(IIIILandroid/renderscript/Allocation;II)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p5

    const-wide/32 v2, 0x8000

    :try_start_0
    const-string v4, "copy2DRangeFrom"

    .line 14
    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 15
    iget-object v4, v1, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v4}, Landroid/renderscript/RenderScript;->validate()V

    .line 16
    invoke-direct/range {p0 .. p4}, Landroid/renderscript/Allocation;->validate2DRange(IIII)V

    .line 17
    iget-object v5, v1, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v6

    iget v10, v1, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v4, v1, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v11, v4, Landroid/renderscript/Type$CubemapFace;->mID:I

    iget-object v4, v1, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 18
    invoke-virtual {v0, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v14

    iget v4, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v0, v0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v0, v0, Landroid/renderscript/Type$CubemapFace;->mID:I

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v16, p6

    move/from16 v17, p7

    move/from16 v18, v4

    move/from16 v19, v0

    .line 19
    invoke-virtual/range {v5 .. v19}, Landroid/renderscript/RenderScript;->nAllocationData2D(JIIIIIIJIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public copy2DRangeFrom(IIIILjava/lang/Object;)V
    .locals 12

    const-wide/32 v1, 0x8000

    :try_start_0
    const-string v0, "copy2DRangeFrom"

    .line 1
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    move-object v11, p0

    move-object/from16 v8, p5

    .line 2
    :try_start_1
    invoke-direct {p0, v8, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v9

    .line 3
    invoke-static/range {p5 .. p5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    .line 4
    invoke-virtual/range {v3 .. v10}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v11, p0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public copy2DRangeFrom(IIII[B)V
    .locals 8

    .line 6
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    .line 7
    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy2DRangeFrom(IIII[F)V
    .locals 8

    .line 12
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    .line 13
    sget-object v6, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy2DRangeFrom(IIII[I)V
    .locals 8

    .line 10
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    .line 11
    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy2DRangeFrom(IIII[S)V
    .locals 8

    .line 8
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    .line 9
    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy2DRangeFrom(IILandroid/graphics/Bitmap;)V
    .locals 12

    const-wide/32 v0, 0x8000

    :try_start_0
    const-string v2, "copy2DRangeFrom"

    .line 21
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 22
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 23
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    if-nez v2, :cond_0

    .line 24
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 25
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 26
    invoke-virtual {v3, p3, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 27
    invoke-virtual {p0, p1, p2, v2}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IILandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 29
    :cond_0
    :try_start_1
    invoke-direct {p0, p3}, Landroid/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V

    .line 30
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {p0, p1, p2, v2, v3}, Landroid/renderscript/Allocation;->validate2DRange(IIII)V

    .line 31
    iget-object v4, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v5

    iget v9, p0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v2, p0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v10, v2, Landroid/renderscript/Type$CubemapFace;->mID:I

    move v7, p1

    move v8, p2

    move-object v11, p3

    invoke-virtual/range {v4 .. v11}, Landroid/renderscript/RenderScript;->nAllocationData2D(JIIIILandroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method public copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-wide/32 v2, 0x8000

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v0, "copy2DRangeFromUnchecked"

    .line 7
    .line 8
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, v1, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 14
    .line 15
    .line 16
    invoke-direct/range {p0 .. p4}, Landroid/renderscript/Allocation;->validate2DRange(IIII)V

    .line 17
    .line 18
    .line 19
    iget-object v0, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 20
    .line 21
    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/renderscript/Element;->getBytesSize()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    mul-int v0, v0, p3

    .line 28
    .line 29
    mul-int v0, v0, p4

    .line 30
    .line 31
    move-object/from16 v15, p6

    .line 32
    .line 33
    iget v4, v15, Landroid/renderscript/Element$DataType;->mSize:I

    .line 34
    .line 35
    mul-int v4, v4, p7

    .line 36
    .line 37
    iget-boolean v5, v1, Landroid/renderscript/Allocation;->mAutoPadding:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    const-string v6, "Array too small for allocation type."

    .line 40
    .line 41
    if-eqz v5, :cond_1

    .line 42
    .line 43
    :try_start_1
    iget-object v5, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 44
    .line 45
    invoke-virtual {v5}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v5}, Landroid/renderscript/Element;->getVectorSize()I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    const/4 v7, 0x3

    .line 54
    if-ne v5, v7, :cond_1

    .line 55
    .line 56
    div-int/lit8 v5, v0, 0x4

    .line 57
    .line 58
    mul-int/2addr v5, v7

    .line 59
    if-gt v5, v4, :cond_0

    .line 60
    .line 61
    const/4 v4, 0x1

    .line 62
    move v14, v0

    .line 63
    move/from16 v17, v4

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    .line 67
    .line 68
    invoke-direct {v0, v6}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v0

    .line 72
    :cond_1
    if-gt v0, v4, :cond_2

    .line 73
    .line 74
    const/4 v0, 0x0

    .line 75
    move/from16 v17, v0

    .line 76
    .line 77
    move v14, v4

    .line 78
    :goto_0
    iget-object v4, v1, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 79
    .line 80
    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    .line 81
    .line 82
    .line 83
    move-result-wide v5

    .line 84
    iget v9, v1, Landroid/renderscript/Allocation;->mSelectedLOD:I

    .line 85
    .line 86
    iget-object v0, v1, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    .line 87
    .line 88
    iget v10, v0, Landroid/renderscript/Type$CubemapFace;->mID:I

    .line 89
    .line 90
    iget-object v0, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 91
    .line 92
    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 93
    .line 94
    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 95
    .line 96
    iget v0, v0, Landroid/renderscript/Element$DataType;->mSize:I

    .line 97
    .line 98
    move/from16 v7, p1

    .line 99
    .line 100
    move/from16 v8, p2

    .line 101
    .line 102
    move/from16 v11, p3

    .line 103
    .line 104
    move/from16 v12, p4

    .line 105
    .line 106
    move-object/from16 v13, p5

    .line 107
    .line 108
    move-object/from16 v15, p6

    .line 109
    .line 110
    move/from16 v16, v0

    .line 111
    .line 112
    invoke-virtual/range {v4 .. v17}, Landroid/renderscript/RenderScript;->nAllocationData2D(JIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .line 114
    .line 115
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_2
    :try_start_2
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    .line 120
    .line 121
    invoke-direct {v0, v6}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    :catchall_0
    move-exception v0

    .line 126
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 127
    .line 128
    .line 129
    throw v0
.end method

.method public copy2DRangeTo(IIIILjava/lang/Object;)V
    .locals 9

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p5, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v7

    .line 2
    invoke-static {p5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 3
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy2DRangeTo(IIII[B)V
    .locals 8

    .line 4
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    .line 5
    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy2DRangeTo(IIII[F)V
    .locals 8

    .line 10
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    .line 11
    sget-object v6, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy2DRangeTo(IIII[I)V
    .locals 8

    .line 8
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    .line 9
    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy2DRangeTo(IIII[S)V
    .locals 8

    .line 6
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    .line 7
    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-wide/32 v2, 0x8000

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v0, "copy2DRangeToUnchecked"

    .line 7
    .line 8
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, v1, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 14
    .line 15
    .line 16
    invoke-direct/range {p0 .. p4}, Landroid/renderscript/Allocation;->validate2DRange(IIII)V

    .line 17
    .line 18
    .line 19
    iget-object v0, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 20
    .line 21
    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/renderscript/Element;->getBytesSize()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    mul-int v0, v0, p3

    .line 28
    .line 29
    mul-int v0, v0, p4

    .line 30
    .line 31
    move-object/from16 v15, p6

    .line 32
    .line 33
    iget v4, v15, Landroid/renderscript/Element$DataType;->mSize:I

    .line 34
    .line 35
    mul-int v4, v4, p7

    .line 36
    .line 37
    iget-boolean v5, v1, Landroid/renderscript/Allocation;->mAutoPadding:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    const-string v6, "Array too small for allocation type."

    .line 40
    .line 41
    if-eqz v5, :cond_1

    .line 42
    .line 43
    :try_start_1
    iget-object v5, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 44
    .line 45
    invoke-virtual {v5}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v5}, Landroid/renderscript/Element;->getVectorSize()I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    const/4 v7, 0x3

    .line 54
    if-ne v5, v7, :cond_1

    .line 55
    .line 56
    div-int/lit8 v5, v0, 0x4

    .line 57
    .line 58
    mul-int/2addr v5, v7

    .line 59
    if-gt v5, v4, :cond_0

    .line 60
    .line 61
    const/4 v4, 0x1

    .line 62
    move v14, v0

    .line 63
    move/from16 v17, v4

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    .line 67
    .line 68
    invoke-direct {v0, v6}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v0

    .line 72
    :cond_1
    if-gt v0, v4, :cond_2

    .line 73
    .line 74
    const/4 v0, 0x0

    .line 75
    move/from16 v17, v0

    .line 76
    .line 77
    move v14, v4

    .line 78
    :goto_0
    iget-object v4, v1, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 79
    .line 80
    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    .line 81
    .line 82
    .line 83
    move-result-wide v5

    .line 84
    iget v9, v1, Landroid/renderscript/Allocation;->mSelectedLOD:I

    .line 85
    .line 86
    iget-object v0, v1, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    .line 87
    .line 88
    iget v10, v0, Landroid/renderscript/Type$CubemapFace;->mID:I

    .line 89
    .line 90
    iget-object v0, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 91
    .line 92
    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 93
    .line 94
    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 95
    .line 96
    iget v0, v0, Landroid/renderscript/Element$DataType;->mSize:I

    .line 97
    .line 98
    move/from16 v7, p1

    .line 99
    .line 100
    move/from16 v8, p2

    .line 101
    .line 102
    move/from16 v11, p3

    .line 103
    .line 104
    move/from16 v12, p4

    .line 105
    .line 106
    move-object/from16 v13, p5

    .line 107
    .line 108
    move-object/from16 v15, p6

    .line 109
    .line 110
    move/from16 v16, v0

    .line 111
    .line 112
    invoke-virtual/range {v4 .. v17}, Landroid/renderscript/RenderScript;->nAllocationRead2D(JIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .line 114
    .line 115
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_2
    :try_start_2
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    .line 120
    .line 121
    invoke-direct {v0, v6}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    :catchall_0
    move-exception v0

    .line 126
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 127
    .line 128
    .line 129
    throw v0
.end method

.method public copy3DRangeFrom(IIIIIILandroid/renderscript/Allocation;III)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    .line 6
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 7
    invoke-direct/range {p0 .. p6}, Landroid/renderscript/Allocation;->validate3DRange(IIIIII)V

    .line 8
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v4

    iget v9, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 9
    invoke-virtual {v1, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v13

    iget v1, v1, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v15, p8

    move/from16 v16, p9

    move/from16 v17, p10

    move/from16 v18, v1

    .line 10
    invoke-virtual/range {v3 .. v18}, Landroid/renderscript/RenderScript;->nAllocationData3D(JIIIIIIIJIIII)V

    return-void
.end method

.method public copy3DRangeFrom(IIIIIILjava/lang/Object;)V
    .locals 14

    const-wide/32 v1, 0x8000

    :try_start_0
    const-string v0, "copy3DRangeFrom"

    .line 1
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    move-object v13, p0

    move-object/from16 v10, p7

    .line 2
    :try_start_1
    invoke-direct {p0, v10, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v11

    .line 3
    invoke-static/range {p7 .. p7}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v12

    move-object v3, p0

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    .line 4
    invoke-direct/range {v3 .. v12}, Landroid/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v13, p0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public copy3DRangeTo(IIIIIILjava/lang/Object;)V
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    move-object v11, p0

    .line 3
    move-object/from16 v8, p7

    .line 4
    .line 5
    invoke-direct {p0, v8, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    .line 6
    .line 7
    .line 8
    move-result-object v9

    .line 9
    invoke-static/range {p7 .. p7}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v10

    .line 13
    move-object v1, p0

    .line 14
    move v2, p1

    .line 15
    move v3, p2

    .line 16
    move v4, p3

    .line 17
    move/from16 v5, p4

    .line 18
    .line 19
    move/from16 v6, p5

    .line 20
    .line 21
    move/from16 v7, p6

    .line 22
    .line 23
    invoke-direct/range {v1 .. v10}, Landroid/renderscript/Allocation;->copy3DRangeToUnchecked(IIIIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public copyFrom(Landroid/graphics/Bitmap;)V
    .locals 6

    const-wide/32 v0, 0x8000

    :try_start_0
    const-string v2, "copyFrom"

    .line 30
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 31
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 32
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    if-nez v2, :cond_0

    .line 33
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 34
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 35
    invoke-virtual {v3, p1, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 36
    invoke-virtual {p0, v2}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 38
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/renderscript/Allocation;->validateBitmapSize(Landroid/graphics/Bitmap;)V

    .line 39
    invoke-direct {p0, p1}, Landroid/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V

    .line 40
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p1}, Landroid/renderscript/RenderScript;->nAllocationCopyFromBitmap(JLandroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method public copyFrom(Landroid/renderscript/Allocation;)V
    .locals 11

    const-wide/32 v0, 0x8000

    :try_start_0
    const-string v2, "copyFrom"

    .line 42
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 43
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 44
    iget-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/renderscript/BaseObj;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 45
    iget v6, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    iget v7, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    move-object v8, p1

    invoke-virtual/range {v3 .. v10}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IIIILandroid/renderscript/Allocation;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 47
    :cond_0
    :try_start_1
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Types of allocations must match."

    invoke-direct {p1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 48
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method public copyFrom(Ljava/lang/Object;)V
    .locals 4

    const-wide/32 v0, 0x8000

    :try_start_0
    const-string v2, "copyFrom"

    .line 17
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v2, 0x1

    .line 18
    invoke-direct {p0, p1, v2}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v2

    .line 19
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    .line 20
    invoke-direct {p0, p1, v2, v3}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method public copyFrom([B)V
    .locals 2

    .line 26
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    .line 27
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyFrom([F)V
    .locals 2

    .line 28
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    .line 29
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyFrom([I)V
    .locals 2

    .line 22
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    .line 23
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyFrom([Landroid/renderscript/BaseObj;)V
    .locals 8

    const-string v0, "Array size mismatch, allocation sizeX = "

    const-wide/32 v1, 0x8000

    :try_start_0
    const-string v3, "copyFrom"

    .line 1
    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2
    iget-object v3, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsObject()V

    .line 4
    array-length v3, p1

    iget v4, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    if-ne v3, v4, :cond_3

    .line 5
    sget v0, Landroid/renderscript/RenderScript;->sPointerSize:I

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-ne v0, v3, :cond_1

    .line 6
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [J

    move v3, v4

    .line 7
    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_0

    mul-int/lit8 v5, v3, 0x4

    .line 8
    aget-object v6, p1, v3

    iget-object v7, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, v7}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    aput-wide v6, v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iget p1, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {p0, v4, p1, v0}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;)V

    goto :goto_2

    .line 10
    :cond_1
    array-length v0, p1

    new-array v0, v0, [I

    move v3, v4

    .line 11
    :goto_1
    array-length v5, p1

    if-ge v3, v5, :cond_2

    .line 12
    aget-object v5, p1, v3

    iget-object v6, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v5, v6}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    long-to-int v5, v5

    aput v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 13
    :cond_2
    iget p1, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {p0, v4, p1, v0}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 15
    :cond_3
    :try_start_1
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", array length = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 16
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method public copyFrom([S)V
    .locals 2

    .line 24
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    .line 25
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyFromUnchecked(Ljava/lang/Object;)V
    .locals 4

    const-wide/32 v0, 0x8000

    :try_start_0
    const-string v2, "copyFromUnchecked"

    .line 9
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v2, 0x0

    .line 10
    invoke-direct {p0, p1, v2}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v2

    .line 11
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    .line 12
    invoke-direct {p0, p1, v2, v3}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method public copyFromUnchecked([B)V
    .locals 2

    .line 16
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyFromUnchecked([F)V
    .locals 2

    .line 17
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyFromUnchecked([I)V
    .locals 2

    .line 14
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyFromUnchecked([S)V
    .locals 2

    .line 15
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyTo(Landroid/graphics/Bitmap;)V
    .locals 5

    const-wide/32 v0, 0x8000

    :try_start_0
    const-string v2, "copyTo"

    .line 1
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    invoke-direct {p0, p1}, Landroid/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V

    .line 4
    invoke-direct {p0, p1}, Landroid/renderscript/Allocation;->validateBitmapSize(Landroid/graphics/Bitmap;)V

    .line 5
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p1}, Landroid/renderscript/RenderScript;->nAllocationCopyToBitmap(JLandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method public copyTo(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    .line 17
    invoke-direct {p0, p1, v0}, Landroid/renderscript/Allocation;->validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v0

    .line 18
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 19
    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyTo([B)V
    .locals 2

    .line 20
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt8()V

    .line 21
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyTo([F)V
    .locals 2

    .line 26
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsFloat32()V

    .line 27
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyTo([I)V
    .locals 2

    .line 24
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt32()V

    .line 25
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyTo([S)V
    .locals 2

    .line 22
    invoke-direct {p0}, Landroid/renderscript/Allocation;->validateIsInt16OrFloat16()V

    .line 23
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    return-void
.end method

.method public copyToFieldPacker(IIIILandroid/renderscript/FieldPacker;)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move v8, p4

    .line 3
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 9
    .line 10
    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 11
    .line 12
    iget-object v1, v1, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    .line 13
    .line 14
    array-length v1, v1

    .line 15
    if-ge v8, v1, :cond_4

    .line 16
    .line 17
    if-ltz p1, :cond_3

    .line 18
    .line 19
    if-ltz p2, :cond_2

    .line 20
    .line 21
    if-ltz p3, :cond_1

    .line 22
    .line 23
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/FieldPacker;->getData()[B

    .line 24
    .line 25
    .line 26
    move-result-object v9

    .line 27
    array-length v10, v9

    .line 28
    iget-object v1, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 29
    .line 30
    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 31
    .line 32
    iget-object v1, v1, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    .line 33
    .line 34
    aget-object v1, v1, v8

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iget-object v2, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 41
    .line 42
    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 43
    .line 44
    iget-object v2, v2, Landroid/renderscript/Element;->mArraySizes:[I

    .line 45
    .line 46
    aget v2, v2, v8

    .line 47
    .line 48
    mul-int/2addr v1, v2

    .line 49
    if-ne v10, v1, :cond_0

    .line 50
    .line 51
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 52
    .line 53
    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    iget v7, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    .line 58
    .line 59
    move v4, p1

    .line 60
    move v5, p2

    .line 61
    move v6, p3

    .line 62
    move v8, p4

    .line 63
    invoke-virtual/range {v1 .. v10}, Landroid/renderscript/RenderScript;->nAllocationElementRead(JIIIII[BI)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_0
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    .line 68
    .line 69
    const-string v3, "Field packer sizelength "

    .line 70
    .line 71
    const-string v4, " does not match component size "

    .line 72
    .line 73
    const-string v5, "."

    .line 74
    .line 75
    invoke-static {v3, v10, v4, v1, v5}, Landroid/app/m;->f(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-direct {v2, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v2

    .line 83
    :cond_1
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    .line 84
    .line 85
    const-string v2, "Offset z must be >= 0."

    .line 86
    .line 87
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v1

    .line 91
    :cond_2
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    .line 92
    .line 93
    const-string v2, "Offset y must be >= 0."

    .line 94
    .line 95
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw v1

    .line 99
    :cond_3
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    .line 100
    .line 101
    const-string v2, "Offset x must be >= 0."

    .line 102
    .line 103
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v1

    .line 107
    :cond_4
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    .line 108
    .line 109
    const-string v2, "Component_number "

    .line 110
    .line 111
    const-string v3, " out of range."

    .line 112
    .line 113
    invoke-static {v2, p4, v3}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v1
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x40

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroid/renderscript/Allocation;->setSurface(Landroid/view/Surface;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-boolean v1, p0, Landroid/renderscript/Allocation;->mOwningType:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/renderscript/BaseObj;->destroy()V

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-super {p0}, Landroid/renderscript/BaseObj;->destroy()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public finalize()V
    .locals 5

    .line 1
    sget-object v0, Landroid/renderscript/RenderScript;->registerNativeFree:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    sget-object v1, Landroid/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    iget v3, p0, Landroid/renderscript/Allocation;->mSize:I

    .line 9
    .line 10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const/4 v4, 0x0

    .line 15
    aput-object v3, v2, v4

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-super {p0}, Landroid/renderscript/BaseObj;->finalize()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public generateMipmaps()V
    .locals 3

    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/RenderScript;->nAllocationGenerateMipmaps(J)V

    return-void
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/renderscript/Type;->getYuv()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v1, 0x11

    .line 16
    .line 17
    if-eq v0, v1, :cond_3

    .line 18
    .line 19
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/renderscript/Type;->getYuv()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const v1, 0x32315659

    .line 26
    .line 27
    .line 28
    if-eq v0, v1, :cond_3

    .line 29
    .line 30
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/renderscript/Type;->getYuv()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/16 v1, 0x23

    .line 37
    .line 38
    if-eq v0, v1, :cond_3

    .line 39
    .line 40
    iget-object v0, p0, Landroid/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    .line 45
    .line 46
    and-int/lit8 v0, v0, 0x20

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 57
    .line 58
    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    mul-int v6, v1, v0

    .line 67
    .line 68
    const/4 v0, 0x1

    .line 69
    new-array v0, v0, [J

    .line 70
    .line 71
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 72
    .line 73
    invoke-virtual {p0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 74
    .line 75
    .line 76
    move-result-wide v3

    .line 77
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 84
    .line 85
    invoke-virtual {v1}, Landroid/renderscript/Type;->getZ()I

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    move-object v5, v0

    .line 90
    invoke-virtual/range {v2 .. v8}, Landroid/renderscript/RenderScript;->nAllocationGetByteBuffer(J[JIII)Ljava/nio/ByteBuffer;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iput-object v1, p0, Landroid/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 95
    .line 96
    const/4 v1, 0x0

    .line 97
    aget-wide v1, v0, v1

    .line 98
    .line 99
    iput-wide v1, p0, Landroid/renderscript/Allocation;->mByteBufferStride:J

    .line 100
    .line 101
    :cond_1
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    .line 102
    .line 103
    and-int/lit8 v0, v0, 0x20

    .line 104
    .line 105
    if-eqz v0, :cond_2

    .line 106
    .line 107
    iget-object v0, p0, Landroid/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    return-object v0

    .line 114
    :cond_2
    iget-object v0, p0, Landroid/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 115
    .line 116
    return-object v0

    .line 117
    :cond_3
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    .line 118
    .line 119
    const-string v1, "YUV format is not supported for getByteBuffer()."

    .line 120
    .line 121
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v0

    .line 125
    :cond_4
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    .line 126
    .line 127
    const-string v1, "Cubemap is not supported for getByteBuffer()."

    .line 128
    .line 129
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw v0
.end method

.method public getBytesSize()I
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 2
    .line 3
    iget v1, v0, Landroid/renderscript/Type;->mDimYuv:I

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/renderscript/Type;->getCount()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    mul-int/2addr v1, v0

    .line 22
    int-to-double v0, v1

    .line 23
    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    .line 24
    .line 25
    mul-double/2addr v0, v2

    .line 26
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    double-to-int v0, v0

    .line 31
    return v0

    .line 32
    :cond_0
    invoke-virtual {v0}, Landroid/renderscript/Type;->getCount()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-object v1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    mul-int/2addr v1, v0

    .line 47
    return v1
.end method

.method public getElement()Landroid/renderscript/Element;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    return-object v0
.end method

.method public getMipmap()Landroid/renderscript/Allocation$MipmapControl;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mMipmapControl:Landroid/renderscript/Allocation$MipmapControl;

    return-object v0
.end method

.method public getStride()J
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/renderscript/Allocation;->mByteBufferStride:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/renderscript/Allocation;->getByteBuffer()Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-wide v0, p0, Landroid/renderscript/Allocation;->mByteBufferStride:J

    .line 13
    .line 14
    return-wide v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 3

    .line 1
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x20

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Landroid/renderscript/Allocation;->mGetSurfaceSurface:Landroid/view/Surface;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/renderscript/RenderScript;->nAllocationGetSurface(J)Landroid/view/Surface;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Landroid/renderscript/Allocation;->mGetSurfaceSurface:Landroid/view/Surface;

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Landroid/renderscript/Allocation;->mGetSurfaceSurface:Landroid/view/Surface;

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_1
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    .line 27
    .line 28
    const-string v1, "Allocation is not a surface texture."

    .line 29
    .line 30
    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Landroid/renderscript/Allocation;->mTimeStamp:J

    return-wide v0
.end method

.method public getType()Landroid/renderscript/Type;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    return-object v0
.end method

.method public getUsage()I
    .locals 1

    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    return v0
.end method

.method public ioReceive()V
    .locals 5

    .line 1
    const-wide/32 v0, 0x8000

    .line 2
    .line 3
    .line 4
    :try_start_0
    const-string/jumbo v2, "ioReceive"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget v2, p0, Landroid/renderscript/Allocation;->mUsage:I

    .line 11
    .line 12
    and-int/lit8 v2, v2, 0x20

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 22
    .line 23
    invoke-virtual {p0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    invoke-virtual {v2, v3, v4}, Landroid/renderscript/RenderScript;->nAllocationIoReceive(J)J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    iput-wide v2, p0, Landroid/renderscript/Allocation;->mTimeStamp:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    :try_start_1
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    .line 38
    .line 39
    const-string v3, "Can only receive if IO_INPUT usage specified."

    .line 40
    .line 41
    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :catchall_0
    move-exception v2

    .line 46
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 47
    .line 48
    .line 49
    throw v2
.end method

.method public ioSend()V
    .locals 5

    .line 1
    const-wide/32 v0, 0x8000

    .line 2
    .line 3
    .line 4
    :try_start_0
    const-string/jumbo v2, "ioSend"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget v2, p0, Landroid/renderscript/Allocation;->mUsage:I

    .line 11
    .line 12
    and-int/lit8 v2, v2, 0x40

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 22
    .line 23
    invoke-virtual {p0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    invoke-virtual {v2, v3, v4}, Landroid/renderscript/RenderScript;->nAllocationIoSend(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    :try_start_1
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    .line 35
    .line 36
    const-string v3, "Can only send buffer if IO_OUTPUT usage specified."

    .line 37
    .line 38
    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :catchall_0
    move-exception v2

    .line 43
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 44
    .line 45
    .line 46
    throw v2
.end method

.method public declared-synchronized resize(I)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 3
    .line 4
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 13
    .line 14
    const/16 v1, 0x15

    .line 15
    .line 16
    if-ge v0, v1, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-gtz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-gtz v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/renderscript/Type;->hasMipmaps()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_0

    .line 49
    .line 50
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v1

    .line 56
    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nAllocationResize1D(JI)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/renderscript/RenderScript;->finish()V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 67
    .line 68
    .line 69
    move-result-wide v0

    .line 70
    invoke-virtual {p1, v0, v1}, Landroid/renderscript/RenderScript;->nAllocationGetType(J)J

    .line 71
    .line 72
    .line 73
    move-result-wide v0

    .line 74
    iget-object p1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 75
    .line 76
    const-wide/16 v2, 0x0

    .line 77
    .line 78
    invoke-virtual {p1, v2, v3}, Landroid/renderscript/BaseObj;->setID(J)V

    .line 79
    .line 80
    .line 81
    new-instance p1, Landroid/renderscript/Type;

    .line 82
    .line 83
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 84
    .line 85
    invoke-direct {p1, v0, v1, v2}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 86
    .line 87
    .line 88
    iput-object p1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/renderscript/Type;->updateFromNative()V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 94
    .line 95
    invoke-direct {p0, p1}, Landroid/renderscript/Allocation;->updateCacheInfo(Landroid/renderscript/Type;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .line 97
    .line 98
    monitor-exit p0

    .line 99
    return-void

    .line 100
    :cond_0
    :try_start_1
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    .line 101
    .line 102
    const-string v0, "Resize only support for 1D allocations at this time."

    .line 103
    .line 104
    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p1

    .line 108
    :cond_1
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    .line 109
    .line 110
    const-string v0, "Resize is not allowed in API 21+."

    .line 111
    .line 112
    invoke-direct {p1, v0}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :catchall_0
    move-exception p1

    .line 117
    monitor-exit p0

    .line 118
    throw p1
.end method

.method public setAutoPadding(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/renderscript/Allocation;->mAutoPadding:Z

    return-void
.end method

.method public setFromFieldPacker(IIIILandroid/renderscript/FieldPacker;)V
    .locals 11

    move-object v0, p0

    move v8, p4

    .line 18
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 19
    iget-object v1, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v1, v1, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v1, v1

    if-ge v8, v1, :cond_4

    if-ltz p1, :cond_3

    if-ltz p2, :cond_2

    if-ltz p3, :cond_1

    .line 20
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v9

    .line 21
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/FieldPacker;->getPos()I

    move-result v10

    .line 22
    iget-object v1, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v1, v1, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    .line 23
    iget-object v2, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mArraySizes:[I

    aget v2, v2, v8

    mul-int/2addr v1, v2

    if-ne v10, v1, :cond_0

    .line 24
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    move-result-wide v2

    iget v7, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    move v4, p1

    move v5, p2

    move v6, p3

    move v8, p4

    invoke-virtual/range {v1 .. v10}, Landroid/renderscript/RenderScript;->nAllocationElementData(JIIIII[BI)V

    return-void

    .line 25
    :cond_0
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "Field packer sizelength "

    const-string v4, " does not match component size "

    const-string v5, "."

    .line 26
    invoke-static {v3, v10, v4, v1, v5}, Landroid/app/m;->f(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-direct {v2, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 28
    :cond_1
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Offset z must be >= 0."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_2
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Offset y must be >= 0."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 30
    :cond_3
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Offset x must be >= 0."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_4
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Component_number "

    const-string v3, " out of range."

    .line 32
    invoke-static {v2, p4, v3}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p2

    move-object v5, p3

    .line 17
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Allocation;->setFromFieldPacker(IIIILandroid/renderscript/FieldPacker;)V

    return-void
.end method

.method public setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v0}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v0

    .line 3
    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v1

    .line 4
    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getPos()I

    move-result p2

    .line 5
    div-int v2, p2, v0

    mul-int v3, v0, v2

    if-ne v3, p2, :cond_0

    .line 6
    invoke-virtual {p0, p1, v2, v1}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[B)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Field packer length "

    const-string v2, " not divisible by element size "

    const-string v3, "."

    .line 8
    invoke-static {v1, p2, v2, v0, v3}, Landroid/app/m;->f(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnBufferAvailableListener(Landroid/renderscript/Allocation$OnBufferAvailableListener;)V
    .locals 5

    .line 1
    sget-object v0, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroid/renderscript/Allocation;->mAllocationMap:Ljava/util/HashMap;

    .line 5
    .line 6
    new-instance v2, Ljava/lang/Long;

    .line 7
    .line 8
    iget-object v3, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 9
    .line 10
    invoke-virtual {p0, v3}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 11
    .line 12
    .line 13
    move-result-wide v3

    .line 14
    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Landroid/renderscript/Allocation;->mBufferNotifier:Landroid/renderscript/Allocation$OnBufferAvailableListener;

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p1
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    .line 7
    .line 8
    and-int/lit8 v0, v0, 0x40

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nAllocationSetSurface(JLandroid/view/Surface;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    .line 23
    .line 24
    const-string v0, "Allocation is not USAGE_IO_OUTPUT."

    .line 25
    .line 26
    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public setupBufferQueue(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    .line 7
    .line 8
    and-int/lit8 v0, v0, 0x20

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nAllocationSetupBufferQueue(JI)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    .line 23
    .line 24
    const-string v0, "Allocation is not USAGE_IO_INPUT."

    .line 25
    .line 26
    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public shareBufferQueue(Landroid/renderscript/Allocation;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroid/renderscript/Allocation;->mUsage:I

    .line 7
    .line 8
    and-int/lit8 v0, v0, 0x20

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getSurface()Landroid/view/Surface;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Landroid/renderscript/Allocation;->mGetSurfaceSurface:Landroid/view/Surface;

    .line 17
    .line 18
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    iget-object v3, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 25
    .line 26
    invoke-virtual {p1, v3}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/renderscript/RenderScript;->nAllocationShareBufferQueue(JJ)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    .line 35
    .line 36
    const-string v0, "Allocation is not USAGE_IO_INPUT."

    .line 37
    .line 38
    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1
.end method

.method public syncAll(I)V
    .locals 5

    .line 1
    const-wide/32 v0, 0x8000

    .line 2
    .line 3
    .line 4
    :try_start_0
    const-string/jumbo v2, "syncAll"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const/16 v3, 0x80

    .line 12
    .line 13
    if-eq p1, v2, :cond_1

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    if-eq p1, v2, :cond_1

    .line 17
    .line 18
    const/4 v2, 0x4

    .line 19
    if-eq p1, v2, :cond_2

    .line 20
    .line 21
    const/16 v2, 0x8

    .line 22
    .line 23
    if-eq p1, v2, :cond_2

    .line 24
    .line 25
    if-ne p1, v3, :cond_0

    .line 26
    .line 27
    iget v2, p0, Landroid/renderscript/Allocation;->mUsage:I

    .line 28
    .line 29
    and-int/2addr v2, v3

    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    iget-object v2, p0, Landroid/renderscript/Allocation;->mBitmap:Landroid/graphics/Bitmap;

    .line 33
    .line 34
    invoke-virtual {p0, v2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    .line 39
    .line 40
    const-string v2, "Source must be exactly one usage type."

    .line 41
    .line 42
    invoke-direct {p1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_1
    iget v2, p0, Landroid/renderscript/Allocation;->mUsage:I

    .line 47
    .line 48
    and-int/2addr v2, v3

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    iget-object v2, p0, Landroid/renderscript/Allocation;->mBitmap:Landroid/graphics/Bitmap;

    .line 52
    .line 53
    invoke-virtual {p0, v2}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_0
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 62
    .line 63
    invoke-direct {p0}, Landroid/renderscript/Allocation;->getIDSafe()J

    .line 64
    .line 65
    .line 66
    move-result-wide v3

    .line 67
    invoke-virtual {v2, v3, v4, p1}, Landroid/renderscript/RenderScript;->nAllocationSyncAll(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 76
    .line 77
    .line 78
    throw p1
.end method

.method public updateFromNative()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/renderscript/BaseObj;->updateFromNative()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/renderscript/RenderScript;->nAllocationGetType(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long v2, v0, v2

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    new-instance v2, Landroid/renderscript/Type;

    .line 21
    .line 22
    iget-object v3, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 23
    .line 24
    invoke-direct {v2, v0, v1, v3}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 25
    .line 26
    .line 27
    iput-object v2, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/renderscript/Type;->updateFromNative()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 33
    .line 34
    invoke-direct {p0, v0}, Landroid/renderscript/Allocation;->updateCacheInfo(Landroid/renderscript/Type;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method
