.class public Landroid/hardware/camera2/impl/CameraMetadataNative;
.super Landroid/hardware/camera2/CameraMetadata;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_JPEG_FORMAT:I = 0x21

.field public static final NUM_TYPES:I = 0x6

.field private static final TAG:Ljava/lang/String; = "CameraMetadataJV"

.field public static final TYPE_BYTE:I = 0x0

.field public static final TYPE_DOUBLE:I = 0x4

.field public static final TYPE_FLOAT:I = 0x2

.field public static final TYPE_INT32:I = 0x1

.field public static final TYPE_INT64:I = 0x3

.field public static final TYPE_RATIONAL:I = 0x5

.field private static final VERBOSE:Z

.field private static final sEnumValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Enum;",
            ">;[I>;"
        }
    .end annotation
.end field

.field public static sMarshalerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/hardware/camera2/impl/MetadataMarshalClass<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mMetadataPtr:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "CameraMetadataJV"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Landroid/hardware/camera2/impl/CameraMetadataNative;->VERBOSE:Z

    .line 2
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$1;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$1;-><init>()V

    sput-object v2, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Landroid/hardware/camera2/impl/CameraMetadataNative;->sEnumValues:Ljava/util/HashMap;

    .line 4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Landroid/hardware/camera2/impl/CameraMetadataNative;->sMarshalerMap:Ljava/util/HashMap;

    .line 5
    invoke-static {}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeClassInit()V

    if-eqz v1, :cond_0

    const-string v2, "Shall register metadata marshalers"

    .line 6
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_0
    new-instance v2, Landroid/hardware/camera2/impl/MetadataMarshalRect;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/MetadataMarshalRect;-><init>()V

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->registerMarshaler(Landroid/hardware/camera2/impl/MetadataMarshalClass;)V

    .line 8
    new-instance v2, Landroid/hardware/camera2/impl/MetadataMarshalSize;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/MetadataMarshalSize;-><init>()V

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->registerMarshaler(Landroid/hardware/camera2/impl/MetadataMarshalClass;)V

    .line 9
    new-instance v2, Landroid/hardware/camera2/impl/MetadataMarshalString;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/MetadataMarshalString;-><init>()V

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->registerMarshaler(Landroid/hardware/camera2/impl/MetadataMarshalClass;)V

    if-eqz v1, :cond_1

    const-string v1, "Registered metadata marshalers"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/hardware/camera2/CameraMetadata;-><init>()V

    .line 2
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeAllocate()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/OutOfMemoryError;

    const-string v1, "Failed to allocate native CameraMetadata"

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .locals 4

    .line 4
    invoke-direct {p0}, Landroid/hardware/camera2/CameraMetadata;-><init>()V

    .line 5
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeAllocateCopy(Landroid/hardware/camera2/impl/CameraMetadataNative;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/OutOfMemoryError;

    const-string v0, "Failed to allocate native CameraMetadata"

    invoke-direct {p1, v0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private close()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeClose()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    return-void
.end method

.method private fixFaceRectangles()[Landroid/graphics/Rect;
    .locals 9

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CameraMetadata$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraMetadata$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Rect;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    array-length v1, v0

    new-array v1, v1, [Landroid/graphics/Rect;

    const/4 v2, 0x0

    .line 3
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 4
    new-instance v3, Landroid/graphics/Rect;

    aget-object v4, v0, v2

    iget v4, v4, Landroid/graphics/Rect;->left:I

    aget-object v5, v0, v2

    iget v5, v5, Landroid/graphics/Rect;->top:I

    aget-object v6, v0, v2

    iget v6, v6, Landroid/graphics/Rect;->right:I

    aget-object v7, v0, v2

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    aget-object v7, v0, v2

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    aget-object v8, v0, v2

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getAvailableFormats()[I
    .locals 4

    .line 1
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_FORMATS:Landroid/hardware/camera2/CameraMetadata$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraMetadata$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 3
    aget v2, v0, v1

    const/16 v3, 0x21

    if-ne v2, v3, :cond_0

    const/16 v2, 0x100

    .line 4
    aput v2, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getBase(Landroid/hardware/camera2/CameraMetadata$Key;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraMetadata$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraMetadata$Key;->getTag()I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->readValues(I)[B

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getNativeType(I)I

    move-result v0

    .line 4
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraMetadata$Key;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->unpackSingle(Ljava/nio/ByteBuffer;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static getEnumFromValue(Ljava/lang/Class;I)Ljava/lang/Enum;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;I)TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sEnumValues:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, -0x1

    move v3, v1

    .line 2
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 3
    aget v4, v0, v3

    if-ne v4, p1, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v2, p1

    .line 4
    :cond_2
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Enum;

    if-ltz v2, :cond_4

    .line 5
    array-length v4, v3

    if-lt v2, v4, :cond_3

    goto :goto_2

    .line 6
    :cond_3
    aget-object p0, v3, v2

    return-object p0

    .line 7
    :cond_4
    :goto_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const/4 p1, 0x1

    aput-object p0, v3, p1

    const/4 p0, 0x2

    if-eqz v0, :cond_5

    move v1, p1

    :cond_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, p0

    const-string p0, "Argument \'value\' (%d) was not a valid enum value for type %s (registered? %b)"

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getEnumValue(Ljava/lang/Enum;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(TT;)I"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sEnumValues:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 2
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz v0, :cond_0

    .line 3
    aget p0, v0, p0

    :cond_0
    return p0
.end method

.method private static getExpectedType(I)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 1
    const-class p0, Landroid/hardware/camera2/Rational;

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type, can\'t map to Java type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 5
    :cond_3
    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 6
    :cond_4
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 7
    :cond_5
    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    return-object p0
.end method

.method private getFaces()[Landroid/hardware/camera2/Face;
    .locals 20

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CameraMetadata$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraMetadata$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x2

    const-string v3, "CameraMetadataJV"

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-nez v1, :cond_0

    const-string v1, "Face detect mode metadata is null, assuming the mode is SIMPLE"

    .line 3
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_1

    new-array v1, v4, [Landroid/hardware/camera2/Face;

    return-object v1

    .line 5
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v5, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v2, :cond_2

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown face detect mode: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v4, [Landroid/hardware/camera2/Face;

    return-object v1

    .line 7
    :cond_2
    :goto_0
    sget-object v7, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_SCORES:Landroid/hardware/camera2/CameraMetadata$Key;

    invoke-virtual {v0, v7}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraMetadata$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 8
    sget-object v8, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CameraMetadata$Key;

    invoke-virtual {v0, v8}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraMetadata$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/graphics/Rect;

    if-eqz v7, :cond_e

    if-nez v8, :cond_3

    goto/16 :goto_6

    .line 9
    :cond_3
    array-length v9, v7

    array-length v10, v8

    if-eq v9, v10, :cond_4

    new-array v9, v2, [Ljava/lang/Object;

    .line 10
    array-length v10, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    array-length v10, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    const-string v10, "Face score size(%d) doesn match face rectangle size(%d)!"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_4
    array-length v9, v7

    array-length v10, v8

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 12
    sget-object v10, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_IDS:Landroid/hardware/camera2/CameraMetadata$Key;

    invoke-virtual {v0, v10}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraMetadata$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    .line 13
    sget-object v11, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_LANDMARKS:Landroid/hardware/camera2/CameraMetadata$Key;

    invoke-virtual {v0, v11}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraMetadata$Key;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    .line 14
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v12, v2, :cond_9

    if-eqz v10, :cond_8

    if-nez v11, :cond_5

    goto :goto_1

    .line 15
    :cond_5
    array-length v6, v10

    if-ne v6, v9, :cond_6

    array-length v6, v11

    mul-int/lit8 v12, v9, 0x6

    if-eq v6, v12, :cond_7

    :cond_6
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 16
    array-length v12, v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v6, v4

    array-length v12, v11

    mul-int/lit8 v12, v12, 0x6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v6, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v6, v2

    const-string v2, "Face id size(%d), or face landmark size(%d) don\'tmatch face number(%d)!"

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_7
    array-length v2, v10

    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 18
    array-length v3, v11

    div-int/lit8 v3, v3, 0x6

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto :goto_2

    :cond_8
    :goto_1
    const-string v1, "Expect face ids and landmarks to be non-null for FULL mode,fallback to SIMPLE mode"

    .line 19
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    :goto_2
    move-object v6, v1

    .line 20
    :goto_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v5, :cond_b

    :goto_4
    if-ge v4, v9, :cond_d

    .line 22
    aget-byte v2, v7, v4

    if-gt v2, v3, :cond_a

    aget-byte v2, v7, v4

    if-lt v2, v5, :cond_a

    .line 23
    new-instance v2, Landroid/hardware/camera2/Face;

    aget-object v6, v8, v4

    aget-byte v10, v7, v4

    invoke-direct {v2, v6, v10}, Landroid/hardware/camera2/Face;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_b
    :goto_5
    if-ge v4, v9, :cond_d

    .line 24
    aget-byte v2, v7, v4

    if-gt v2, v3, :cond_c

    aget-byte v2, v7, v4

    if-lt v2, v5, :cond_c

    aget v2, v10, v4

    if-ltz v2, :cond_c

    .line 25
    new-instance v2, Landroid/graphics/Point;

    mul-int/lit8 v6, v4, 0x6

    aget v12, v11, v6

    add-int/lit8 v13, v6, 0x1

    aget v13, v11, v13

    invoke-direct {v2, v12, v13}, Landroid/graphics/Point;-><init>(II)V

    .line 26
    new-instance v15, Landroid/graphics/Point;

    add-int/lit8 v12, v6, 0x2

    aget v12, v11, v12

    add-int/lit8 v13, v6, 0x3

    aget v13, v11, v13

    invoke-direct {v15, v12, v13}, Landroid/graphics/Point;-><init>(II)V

    .line 27
    new-instance v14, Landroid/graphics/Point;

    add-int/lit8 v12, v6, 0x4

    aget v12, v11, v12

    add-int/lit8 v6, v6, 0x5

    aget v6, v11, v6

    invoke-direct {v14, v12, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 28
    new-instance v6, Landroid/hardware/camera2/Face;

    aget-object v13, v8, v4

    aget-byte v16, v7, v4

    aget v17, v10, v4

    move-object v12, v6

    move-object/from16 v18, v14

    move/from16 v14, v16

    move-object/from16 v19, v15

    move/from16 v15, v17

    move-object/from16 v16, v2

    move-object/from16 v17, v19

    invoke-direct/range {v12 .. v18}, Landroid/hardware/camera2/Face;-><init>(Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 29
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 30
    :cond_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/hardware/camera2/Face;

    .line 31
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v2

    :cond_e
    :goto_6
    const-string v1, "Expect face scores and rectangles to be non-null"

    .line 32
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v4, [Landroid/hardware/camera2/Face;

    return-object v1
.end method

.method private static getMarshaler(Ljava/lang/Class;I)Landroid/hardware/camera2/impl/MetadataMarshalClass;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Landroid/hardware/camera2/impl/MetadataMarshalClass<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sMarshalerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/MetadataMarshalClass;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0, p1}, Landroid/hardware/camera2/impl/MetadataMarshalClass;->isNativeTypeSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to be marshalled to/from a "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getNativeType(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTypeFromTag(I)I

    move-result p0

    return p0
.end method

.method private getOverride(Landroid/hardware/camera2/CameraMetadata$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraMetadata$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_FORMATS:Landroid/hardware/camera2/CameraMetadata$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraMetadata$Key;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getAvailableFormats()[I

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CameraMetadata$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraMetadata$Key;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getFaces()[Landroid/hardware/camera2/Face;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CameraMetadata$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraMetadata$Key;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->fixFaceRectangles()[Landroid/graphics/Rect;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public static getTag(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTagFromKey(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static getTypeSize(I)I
    .locals 3

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    const/4 v1, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type, can\'t get size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/16 p0, 0x8

    return p0

    :cond_2
    return v1

    :cond_3
    return v0
.end method

.method private native nativeAllocate()J
.end method

.method private native nativeAllocateCopy(Landroid/hardware/camera2/impl/CameraMetadataNative;)J
.end method

.method private static native nativeClassInit()V
.end method

.method private synchronized native nativeClose()V
.end method

.method private synchronized native nativeGetEntryCount()I
.end method

.method private static native nativeGetTagFromKey(Ljava/lang/String;)I
.end method

.method private static native nativeGetTypeFromTag(I)I
.end method

.method private synchronized native nativeIsEmpty()Z
.end method

.method private synchronized native nativeReadFromParcel(Landroid/os/Parcel;)V
.end method

.method private synchronized native nativeReadValues(I)[B
.end method

.method private synchronized native nativeSwap(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
.end method

.method private synchronized native nativeWriteToParcel(Landroid/os/Parcel;)V
.end method

.method private synchronized native nativeWriteValues(I[B)V
.end method

.method private static packArray(Ljava/lang/Object;Ljava/nio/ByteBuffer;Ljava/lang/Class;IZ)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Class<",
            "TT;>;IZ)I"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p1, p2, p3, p4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->packSingle(Ljava/lang/Object;Ljava/nio/ByteBuffer;Ljava/lang/Class;IZ)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private static packClass(Ljava/lang/Object;Ljava/nio/ByteBuffer;Ljava/lang/Class;IZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Class<",
            "TT;>;IZ)I"
        }
    .end annotation

    .line 1
    invoke-static {p2, p3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMarshaler(Ljava/lang/Class;I)Landroid/hardware/camera2/impl/MetadataMarshalClass;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1, p3, p4}, Landroid/hardware/camera2/impl/MetadataMarshalClass;->marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;IZ)I

    move-result p0

    return p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const-string p2, "Unknown Key type: %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static packEnum(Ljava/lang/Enum;Ljava/nio/ByteBuffer;Ljava/lang/Class;IZ)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(TT;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Class<",
            "TT;>;IZ)I"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getEnumValue(Ljava/lang/Enum;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->packSingleNative(Ljava/lang/Object;Ljava/nio/ByteBuffer;Ljava/lang/Class;IZ)I

    move-result p0

    return p0
.end method

.method private static packSingle(Ljava/lang/Object;Ljava/nio/ByteBuffer;Ljava/lang/Class;IZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Class<",
            "TT;>;IZ)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_3

    const-class v0, Landroid/hardware/camera2/Rational;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    check-cast p0, Ljava/lang/Enum;

    invoke-static {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->packEnum(Ljava/lang/Enum;Ljava/nio/ByteBuffer;Ljava/lang/Class;IZ)I

    move-result p0

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-static {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->packArray(Ljava/lang/Object;Ljava/nio/ByteBuffer;Ljava/lang/Class;IZ)I

    move-result p0

    goto :goto_1

    .line 6
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->packClass(Ljava/lang/Object;Ljava/nio/ByteBuffer;Ljava/lang/Class;IZ)I

    move-result p0

    goto :goto_1

    .line 7
    :cond_3
    :goto_0
    invoke-static {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->packSingleNative(Ljava/lang/Object;Ljava/nio/ByteBuffer;Ljava/lang/Class;IZ)I

    move-result p0

    :goto_1
    return p0
.end method

.method private static packSingleNative(Ljava/lang/Object;Ljava/nio/ByteBuffer;Ljava/lang/Class;IZ)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Class<",
            "TT;>;IZ)I"
        }
    .end annotation

    if-nez p4, :cond_8

    if-nez p3, :cond_0

    .line 1
    sget-object p4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p2, p4, :cond_0

    .line 2
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    int-to-byte p0, p0

    .line 3
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 4
    sget-object p4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, p4, :cond_1

    .line 5
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-byte p0, p0

    .line 6
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getExpectedType(I)Ljava/lang/Class;

    move-result-object p4

    if-ne p2, p4, :cond_7

    :goto_0
    if-nez p3, :cond_2

    .line 8
    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    if-ne p3, p2, :cond_3

    .line 9
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_3
    const/4 p2, 0x2

    if-ne p3, p2, :cond_4

    .line 10
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_4
    const/4 p2, 0x3

    if-ne p3, p2, :cond_5

    .line 11
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_5
    const/4 p2, 0x4

    if-ne p3, p2, :cond_6

    .line 12
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_6
    const/4 p2, 0x5

    if-ne p3, p2, :cond_8

    .line 13
    check-cast p0, Landroid/hardware/camera2/Rational;

    .line 14
    invoke-virtual {p0}, Landroid/hardware/camera2/Rational;->getNumerator()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {p0}, Landroid/hardware/camera2/Rational;->getDenominator()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 16
    :cond_7
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Tried to pack a type of "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " but we expected the type to be "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getExpectedType(I)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_8
    :goto_1
    invoke-static {p3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getTypeSize(I)I

    move-result p0

    return p0
.end method

.method public static registerEnumValues(Ljava/lang/Class;[I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;[I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    array-length v0, v0

    array-length v1, p1

    if-ne v0, v1, :cond_1

    .line 2
    sget-boolean v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Registered enum values for type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " values"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMetadataJV"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sEnumValues:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected values array to be the same size as the enumTypes values "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for type "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static registerMarshaler(Landroid/hardware/camera2/impl/MetadataMarshalClass;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/MetadataMarshalClass<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sMarshalerMap:Ljava/util/HashMap;

    invoke-interface {p0}, Landroid/hardware/camera2/impl/MetadataMarshalClass;->getMarshalingClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setAvailableFormats([I)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    array-length v1, p1

    new-array v1, v1, [I

    .line 2
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 3
    aget v2, p1, v0

    aput v2, v1, v0

    .line 4
    aget v2, p1, v0

    const/16 v3, 0x100

    if-ne v2, v3, :cond_1

    const/16 v2, 0x21

    .line 5
    aput v2, v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_2
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_FORMATS:Landroid/hardware/camera2/CameraMetadata$Key;

    invoke-direct {p0, p1, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CameraMetadata$Key;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method private setBase(Landroid/hardware/camera2/CameraMetadata$Key;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraMetadata$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraMetadata$Key;->getTag()I

    move-result v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeValues(I[B)V

    return-void

    .line 3
    :cond_0
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getNativeType(I)I

    move-result v2

    .line 4
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraMetadata$Key;->getType()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p2, v1, v3, v2, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->packSingle(Ljava/lang/Object;Ljava/nio/ByteBuffer;Ljava/lang/Class;IZ)I

    move-result v1

    .line 5
    new-array v1, v1, [B

    .line 6
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 7
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraMetadata$Key;->getType()Ljava/lang/Class;

    move-result-object p1

    const/4 v4, 0x0

    invoke-static {p2, v3, p1, v2, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->packSingle(Ljava/lang/Object;Ljava/nio/ByteBuffer;Ljava/lang/Class;IZ)I

    .line 8
    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeValues(I[B)V

    return-void
.end method

.method private setOverride(Landroid/hardware/camera2/CameraMetadata$Key;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraMetadata$Key<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_FORMATS:Landroid/hardware/camera2/CameraMetadata$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraMetadata$Key;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    check-cast p2, [I

    invoke-direct {p0, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setAvailableFormats([I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static unpackArray(Ljava/nio/ByteBuffer;Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Class<",
            "TT;>;I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-static {p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getTypeSize(I)I

    move-result v1

    .line 3
    invoke-static {v0, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMarshaler(Ljava/lang/Class;I)Landroid/hardware/camera2/impl/MetadataMarshalClass;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v2, p2}, Landroid/hardware/camera2/impl/MetadataMarshalClass;->getNativeSize(I)I

    move-result v1

    :cond_0
    const/4 v2, -0x1

    const-string v3, "CameraMetadataJV"

    const/4 v4, 0x0

    if-eq v1, v2, :cond_2

    .line 5
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 6
    div-int v5, v2, v1

    .line 7
    sget-boolean v6, Landroid/hardware/camera2/impl/CameraMetadataNative;->VERBOSE:Z

    if-eqz v6, :cond_1

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    .line 8
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x3

    aput-object p1, v6, v1

    const-string v1, "Attempting to unpack array (count = %d, element size = %d, bytes remaining = %d) for type %s"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_1
    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    if-ge v4, v5, :cond_4

    .line 10
    invoke-static {p0, v0, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->unpackSingle(Ljava/nio/ByteBuffer;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    .line 11
    invoke-static {v1, v4, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-static {p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getTypeSize(I)I

    move-result v2

    .line 14
    :goto_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-lt v5, v2, :cond_3

    .line 15
    invoke-static {p0, v0, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->unpackSingle(Ljava/nio/ByteBuffer;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    .line 16
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17
    :cond_3
    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 18
    :cond_4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    if-eqz p2, :cond_5

    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Trailing bytes ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") left over after unpacking "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v1
.end method

.method private static unpackClass(Ljava/nio/ByteBuffer;Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Class<",
            "TT;>;I)TT;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMarshaler(Ljava/lang/Class;I)Landroid/hardware/camera2/impl/MetadataMarshalClass;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p2}, Landroid/hardware/camera2/impl/MetadataMarshalClass;->unmarshal(Ljava/nio/ByteBuffer;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown class type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static unpackEnum(Ljava/nio/ByteBuffer;Ljava/lang/Class;I)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Class<",
            "TT;>;I)TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->unpackSingleNative(Ljava/nio/ByteBuffer;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 2
    invoke-static {p1, p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getEnumFromValue(Ljava/lang/Class;I)Ljava/lang/Enum;

    move-result-object p0

    return-object p0
.end method

.method private static unpackSingle(Ljava/nio/ByteBuffer;Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Class<",
            "TT;>;I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_3

    const-class v0, Landroid/hardware/camera2/Rational;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->unpackEnum(Ljava/nio/ByteBuffer;Ljava/lang/Class;I)Ljava/lang/Enum;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->unpackArray(Ljava/nio/ByteBuffer;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 6
    :cond_2
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->unpackClass(Ljava/nio/ByteBuffer;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 7
    :cond_3
    :goto_0
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->unpackSingleNative(Ljava/nio/ByteBuffer;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static unpackSingleNative(Ljava/nio/ByteBuffer;Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Class<",
            "TT;>;I)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    .line 4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne p2, v1, :cond_4

    .line 5
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    if-ne p2, v1, :cond_9

    .line 6
    new-instance v1, Landroid/hardware/camera2/Rational;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    invoke-direct {v1, v2, p0}, Landroid/hardware/camera2/Rational;-><init>(II)V

    move-object p0, v1

    :goto_0
    if-nez p2, :cond_6

    .line 7
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_6

    .line 8
    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 9
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_2

    :cond_6
    if-nez p2, :cond_7

    .line 10
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    .line 11
    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    .line 12
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_2

    .line 13
    :cond_7
    invoke-static {p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getExpectedType(I)Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_8

    :goto_2
    return-object p0

    .line 14
    :cond_8
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to unpack a type of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " but we expected the type to be "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getExpectedType(I)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_9
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown type, can\'t unpack a native type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public get(Landroid/hardware/camera2/CameraMetadata$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraMetadata$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getOverride(Landroid/hardware/camera2/CameraMetadata$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraMetadata$Key;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getEntryCount()I
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetEntryCount()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeIsEmpty()Z

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeReadFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public readValues(I)[B
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeReadValues(I)[B

    move-result-object p1

    return-object p1
.end method

.method public set(Landroid/hardware/camera2/CameraMetadata$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraMetadata$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setOverride(Landroid/hardware/camera2/CameraMetadata$Key;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CameraMetadata$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public swap(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeSwap(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeWriteToParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public writeValues(I[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeWriteValues(I[B)V

    return-void
.end method
