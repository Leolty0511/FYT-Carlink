.class public final Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/camera2/marshal/MarshalQueryable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/hardware/camera2/marshal/MarshalQueryable<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "TT;>;I)",
            "Landroid/hardware/camera2/marshal/Marshaler<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;

    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;-><init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive;Landroid/hardware/camera2/utils/TypeReference;I)V

    return-object v0
.end method

.method public isTypeMappingSupported(Landroid/hardware/camera2/utils/TypeReference;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "TT;>;I)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TypeReference;->getType()Ljava/lang/reflect/Type;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Ljava/lang/Class;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_f

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TypeReference;->getType()Ljava/lang/reflect/Type;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Class;

    .line 15
    .line 16
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    if-eq p1, v0, :cond_e

    .line 20
    .line 21
    const-class v0, Ljava/lang/Byte;

    .line 22
    .line 23
    if-ne p1, v0, :cond_0

    .line 24
    .line 25
    goto :goto_4

    .line 26
    :cond_0
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 27
    .line 28
    if-eq p1, v0, :cond_c

    .line 29
    .line 30
    const-class v0, Ljava/lang/Integer;

    .line 31
    .line 32
    if-ne p1, v0, :cond_1

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_1
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 36
    .line 37
    if-eq p1, v0, :cond_a

    .line 38
    .line 39
    const-class v0, Ljava/lang/Float;

    .line 40
    .line 41
    if-ne p1, v0, :cond_2

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 45
    .line 46
    if-eq p1, v0, :cond_8

    .line 47
    .line 48
    const-class v0, Ljava/lang/Long;

    .line 49
    .line 50
    if-ne p1, v0, :cond_3

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 54
    .line 55
    if-eq p1, v0, :cond_6

    .line 56
    .line 57
    const-class v0, Ljava/lang/Double;

    .line 58
    .line 59
    if-ne p1, v0, :cond_4

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_4
    const-class v0, Landroid/util/Rational;

    .line 63
    .line 64
    if-ne p1, v0, :cond_f

    .line 65
    .line 66
    const/4 p1, 0x5

    .line 67
    if-ne p2, p1, :cond_5

    .line 68
    .line 69
    move v1, v2

    .line 70
    :cond_5
    return v1

    .line 71
    :cond_6
    :goto_0
    const/4 p1, 0x4

    .line 72
    if-ne p2, p1, :cond_7

    .line 73
    .line 74
    move v1, v2

    .line 75
    :cond_7
    return v1

    .line 76
    :cond_8
    :goto_1
    const/4 p1, 0x3

    .line 77
    if-ne p2, p1, :cond_9

    .line 78
    .line 79
    move v1, v2

    .line 80
    :cond_9
    return v1

    .line 81
    :cond_a
    :goto_2
    const/4 p1, 0x2

    .line 82
    if-ne p2, p1, :cond_b

    .line 83
    .line 84
    move v1, v2

    .line 85
    :cond_b
    return v1

    .line 86
    :cond_c
    :goto_3
    if-ne p2, v2, :cond_d

    .line 87
    .line 88
    move v1, v2

    .line 89
    :cond_d
    return v1

    .line 90
    :cond_e
    :goto_4
    if-nez p2, :cond_f

    .line 91
    .line 92
    move v1, v2

    .line 93
    :cond_f
    return v1
.end method
