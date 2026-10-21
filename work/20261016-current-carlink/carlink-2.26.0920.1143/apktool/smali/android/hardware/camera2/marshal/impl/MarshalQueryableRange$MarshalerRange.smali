.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MarshalerRange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler<",
        "Landroid/util/Range<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "-",
            "Landroid/util/Range<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final mConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Landroid/util/Range<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final mNestedTypeMarshaler:Landroid/hardware/camera2/marshal/Marshaler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/marshal/Marshaler<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "Landroid/util/Range<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Comparable;

    .line 2
    .line 3
    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange;

    .line 4
    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/hardware/camera2/utils/TypeReference;->getRawType()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mClass:Ljava/lang/Class;

    .line 13
    .line 14
    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/camera2/utils/TypeReference;->getType()Ljava/lang/reflect/Type;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    check-cast p2, Ljava/lang/reflect/ParameterizedType;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .line 19
    .line 20
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const/4 p3, 0x0

    .line 25
    aget-object p2, p2, p3

    .line 26
    .line 27
    invoke-static {p2}, Landroid/hardware/camera2/utils/TypeReference;->createSpecializedTypeReference(Ljava/lang/reflect/Type;)Landroid/hardware/camera2/utils/TypeReference;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    iget v1, p0, Landroid/hardware/camera2/marshal/Marshaler;->mNativeType:I

    .line 32
    .line 33
    invoke-static {p2, v1}, Landroid/hardware/camera2/marshal/MarshalRegistry;->getMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    iput-object p2, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mNestedTypeMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    .line 38
    .line 39
    const/4 p2, 0x2

    .line 40
    :try_start_1
    new-array p2, p2, [Ljava/lang/Class;

    .line 41
    .line 42
    aput-object v0, p2, p3

    .line 43
    .line 44
    const/4 p3, 0x1

    .line 45
    aput-object v0, p2, p3

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mConstructor:Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    .line 52
    .line 53
    return-void

    .line 54
    :catch_0
    move-exception p1

    .line 55
    new-instance p2, Ljava/lang/AssertionError;

    .line 56
    .line 57
    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    throw p2

    .line 61
    :catch_1
    move-exception p1

    .line 62
    new-instance p2, Ljava/lang/AssertionError;

    .line 63
    .line 64
    const-string p3, "Raw use of Range is not supported"

    .line 65
    .line 66
    invoke-direct {p2, p3, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    throw p2
.end method


# virtual methods
.method public calculateMarshalSize(Landroid/util/Range;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "TT;>;)I"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->getNativeSize()I

    move-result v0

    .line 3
    sget v1, Landroid/hardware/camera2/marshal/Marshaler;->NATIVE_SIZE_DYNAMIC:I

    if-eq v0, v1, :cond_0

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mNestedTypeMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/marshal/Marshaler;->calculateMarshalSize(Ljava/lang/Object;)I

    move-result v0

    .line 5
    iget-object v1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mNestedTypeMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/marshal/Marshaler;->calculateMarshalSize(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p1, v0

    return p1
.end method

.method public bridge synthetic calculateMarshalSize(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/util/Range;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->calculateMarshalSize(Landroid/util/Range;)I

    move-result p1

    return p1
.end method

.method public getNativeSize()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mNestedTypeMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/camera2/marshal/Marshaler;->getNativeSize()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget v1, Landroid/hardware/camera2/marshal/Marshaler;->NATIVE_SIZE_DYNAMIC:I

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    mul-int/lit8 v0, v0, 0x2

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    return v1
.end method

.method public marshal(Landroid/util/Range;Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "TT;>;",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mNestedTypeMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/hardware/camera2/marshal/Marshaler;->marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V

    .line 3
    iget-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mNestedTypeMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/marshal/Marshaler;->marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/util/Range;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->marshal(Landroid/util/Range;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Landroid/util/Range;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Landroid/util/Range<",
            "TT;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mNestedTypeMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/marshal/Marshaler;->unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 3
    iget-object v1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mNestedTypeMarshaler:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/marshal/Marshaler;->unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->mConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Range;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_1
    move-exception p1

    .line 6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_2
    move-exception p1

    .line 7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_3
    move-exception p1

    .line 8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange$MarshalerRange;->unmarshal(Ljava/nio/ByteBuffer;)Landroid/util/Range;

    move-result-object p1

    return-object p1
.end method
