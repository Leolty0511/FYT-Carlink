.class Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MarshalerPair"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler<",
        "Landroid/util/Pair<",
        "TT1;TT2;>;>;"
    }
.end annotation


# instance fields
.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "-",
            "Landroid/util/Pair<",
            "TT1;TT2;>;>;"
        }
    .end annotation
.end field

.field private final mConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Landroid/util/Pair<",
            "TT1;TT2;>;>;"
        }
    .end annotation
.end field

.field private final mNestedTypeMarshalerFirst:Landroid/hardware/camera2/marshal/Marshaler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/marshal/Marshaler<",
            "TT1;>;"
        }
    .end annotation
.end field

.field private final mNestedTypeMarshalerSecond:Landroid/hardware/camera2/marshal/Marshaler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/marshal/Marshaler<",
            "TT2;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "Landroid/util/Pair<",
            "TT1;TT2;>;>;I)V"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair;

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
    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mClass:Ljava/lang/Class;

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
    move-result-object p3

    .line 24
    const/4 v1, 0x0

    .line 25
    aget-object p3, p3, v1

    .line 26
    .line 27
    invoke-static {p3}, Landroid/hardware/camera2/utils/TypeReference;->createSpecializedTypeReference(Ljava/lang/reflect/Type;)Landroid/hardware/camera2/utils/TypeReference;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    iget v2, p0, Landroid/hardware/camera2/marshal/Marshaler;->mNativeType:I

    .line 32
    .line 33
    invoke-static {p3, v2}, Landroid/hardware/camera2/marshal/MarshalRegistry;->getMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    iput-object p3, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNestedTypeMarshalerFirst:Landroid/hardware/camera2/marshal/Marshaler;

    .line 38
    .line 39
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    const/4 p3, 0x1

    .line 44
    aget-object p2, p2, p3

    .line 45
    .line 46
    invoke-static {p2}, Landroid/hardware/camera2/utils/TypeReference;->createSpecializedTypeReference(Ljava/lang/reflect/Type;)Landroid/hardware/camera2/utils/TypeReference;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    iget v2, p0, Landroid/hardware/camera2/marshal/Marshaler;->mNativeType:I

    .line 51
    .line 52
    invoke-static {p2, v2}, Landroid/hardware/camera2/marshal/MarshalRegistry;->getMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    iput-object p2, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNestedTypeMarshalerSecond:Landroid/hardware/camera2/marshal/Marshaler;

    .line 57
    .line 58
    const/4 p2, 0x2

    .line 59
    :try_start_1
    new-array p2, p2, [Ljava/lang/Class;

    .line 60
    .line 61
    aput-object v0, p2, v1

    .line 62
    .line 63
    aput-object v0, p2, p3

    .line 64
    .line 65
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mConstructor:Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    .line 70
    .line 71
    return-void

    .line 72
    :catch_0
    move-exception p1

    .line 73
    new-instance p2, Ljava/lang/AssertionError;

    .line 74
    .line 75
    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    throw p2

    .line 79
    :catch_1
    move-exception p1

    .line 80
    new-instance p2, Ljava/lang/AssertionError;

    .line 81
    .line 82
    const-string p3, "Raw use of Pair is not supported"

    .line 83
    .line 84
    invoke-direct {p2, p3, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    throw p2
.end method


# virtual methods
.method public calculateMarshalSize(Landroid/util/Pair;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "TT1;TT2;>;)I"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->getNativeSize()I

    move-result v0

    .line 3
    sget v1, Landroid/hardware/camera2/marshal/Marshaler;->NATIVE_SIZE_DYNAMIC:I

    if-eq v0, v1, :cond_0

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNestedTypeMarshalerFirst:Landroid/hardware/camera2/marshal/Marshaler;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/marshal/Marshaler;->calculateMarshalSize(Ljava/lang/Object;)I

    move-result v0

    .line 5
    iget-object v1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNestedTypeMarshalerSecond:Landroid/hardware/camera2/marshal/Marshaler;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/marshal/Marshaler;->calculateMarshalSize(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p1, v0

    return p1
.end method

.method public bridge synthetic calculateMarshalSize(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->calculateMarshalSize(Landroid/util/Pair;)I

    move-result p1

    return p1
.end method

.method public getNativeSize()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNestedTypeMarshalerFirst:Landroid/hardware/camera2/marshal/Marshaler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/camera2/marshal/Marshaler;->getNativeSize()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNestedTypeMarshalerSecond:Landroid/hardware/camera2/marshal/Marshaler;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/hardware/camera2/marshal/Marshaler;->getNativeSize()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sget v2, Landroid/hardware/camera2/marshal/Marshaler;->NATIVE_SIZE_DYNAMIC:I

    .line 14
    .line 15
    if-eq v0, v2, :cond_0

    .line 16
    .line 17
    if-eq v1, v2, :cond_0

    .line 18
    .line 19
    add-int/2addr v0, v1

    .line 20
    return v0

    .line 21
    :cond_0
    return v2
.end method

.method public marshal(Landroid/util/Pair;Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "TT1;TT2;>;",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation

    .line 2
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNestedTypeMarshalerFirst:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {v1, v0, p2}, Landroid/hardware/camera2/marshal/Marshaler;->marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V

    .line 5
    iget-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNestedTypeMarshalerSecond:Landroid/hardware/camera2/marshal/Marshaler;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/marshal/Marshaler;->marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Pair#second must not be null"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Pair#first must not be null"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->marshal(Landroid/util/Pair;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Landroid/util/Pair<",
            "TT1;TT2;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNestedTypeMarshalerFirst:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/marshal/Marshaler;->unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mNestedTypeMarshalerSecond:Landroid/hardware/camera2/marshal/Marshaler;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/marshal/Marshaler;->unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->mConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;
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
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair$MarshalerPair;->unmarshal(Ljava/nio/ByteBuffer;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method
