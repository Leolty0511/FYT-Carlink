.class public Landroid/os/HidlSupport;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a([Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/os/HidlSupport;->lambda$deepEquals$0([Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0}, Landroid/os/HidlSupport;->lambda$deepHashCode$2(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic c(Ljava/util/Iterator;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->lambda$deepEquals$1(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0}, Landroid/os/HidlSupport;->lambda$deepHashCode$3(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p0, :cond_9

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    if-eq v2, v3, :cond_2

    .line 20
    .line 21
    return v1

    .line 22
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_6

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    if-eq v2, v3, :cond_3

    .line 37
    .line 38
    return v1

    .line 39
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_4

    .line 44
    .line 45
    invoke-static {p0, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0

    .line 50
    :cond_4
    check-cast p0, [Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p1, [Ljava/lang/Object;

    .line 53
    .line 54
    array-length v2, p0

    .line 55
    array-length v3, p1

    .line 56
    if-ne v2, v3, :cond_5

    .line 57
    .line 58
    array-length v2, p0

    .line 59
    invoke-static {v2}, Landroid/net/lowpan/b;->m(I)Ljava/util/stream/IntStream;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    new-instance v3, Landroid/os/c;

    .line 64
    .line 65
    invoke-direct {v3, p0, p1}, Landroid/os/c;-><init>([Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-static {v2, v3}, Landroid/net/lowpan/b;->A(Ljava/util/stream/IntStream;Landroid/os/c;)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-eqz p0, :cond_5

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_5
    move v0, v1

    .line 76
    :goto_0
    return v0

    .line 77
    :cond_6
    instance-of v0, p0, Ljava/util/List;

    .line 78
    .line 79
    if-eqz v0, :cond_8

    .line 80
    .line 81
    check-cast p0, Ljava/util/List;

    .line 82
    .line 83
    check-cast p1, Ljava/util/List;

    .line 84
    .line 85
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eq v0, v2, :cond_7

    .line 94
    .line 95
    return v1

    .line 96
    :cond_7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-static {p1}, Landroid/net/lowpan/b;->n(Ljava/util/List;)Ljava/util/stream/Stream;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    new-instance v0, Landroid/os/d;

    .line 105
    .line 106
    invoke-direct {v0, p0}, Landroid/os/d;-><init>(Ljava/util/Iterator;)V

    .line 107
    .line 108
    .line 109
    invoke-static {p1, v0}, Landroid/net/lowpan/b;->B(Ljava/util/stream/Stream;Landroid/os/d;)Z

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    return p0

    .line 114
    :cond_8
    invoke-static {p0}, Landroid/os/HidlSupport;->throwErrorIfUnsupportedType(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    return p0

    .line 122
    :cond_9
    :goto_1
    return v1
.end method

.method public static deepHashCode(Ljava/lang/Object;)I
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-static {p0}, Landroid/os/HidlSupport;->primitiveArrayHashCode(Ljava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0

    .line 30
    :cond_1
    check-cast p0, [Ljava/lang/Object;

    .line 31
    .line 32
    invoke-static {p0}, Landroid/net/lowpan/b;->o([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    new-instance v0, Landroid/hardware/radio/b;

    .line 37
    .line 38
    const/4 v1, 0x2

    .line 39
    invoke-direct {v0, v1}, Landroid/hardware/radio/b;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-static {p0, v0}, Landroid/animation/b;->o(Ljava/util/stream/Stream;Landroid/hardware/radio/b;)Ljava/util/stream/IntStream;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p0}, Landroid/animation/b;->B(Ljava/util/stream/IntStream;)[I

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    return p0

    .line 55
    :cond_2
    instance-of v0, p0, Ljava/util/List;

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    check-cast p0, Ljava/util/List;

    .line 60
    .line 61
    invoke-static {p0}, Landroid/net/lowpan/b;->n(Ljava/util/List;)Ljava/util/stream/Stream;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    new-instance v0, Landroid/hardware/radio/b;

    .line 66
    .line 67
    const/4 v1, 0x3

    .line 68
    invoke-direct {v0, v1}, Landroid/hardware/radio/b;-><init>(I)V

    .line 69
    .line 70
    .line 71
    invoke-static {p0, v0}, Landroid/animation/b;->o(Ljava/util/stream/Stream;Landroid/hardware/radio/b;)Ljava/util/stream/IntStream;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {p0}, Landroid/animation/b;->B(Ljava/util/stream/IntStream;)[I

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    return p0

    .line 84
    :cond_3
    invoke-static {p0}, Landroid/os/HidlSupport;->throwErrorIfUnsupportedType(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    return p0
.end method

.method private static synthetic lambda$deepEquals$0([Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 0

    aget-object p0, p0, p2

    aget-object p1, p1, p2

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$deepEquals$1(Ljava/util/Iterator;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$deepHashCode$2(Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$deepHashCode$3(Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static primitiveArrayHashCode(Ljava/lang/Object;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    check-cast p0, [Z

    .line 14
    .line 15
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Z)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_0
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 21
    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    check-cast p0, [B

    .line 25
    .line 26
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0

    .line 31
    :cond_1
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 32
    .line 33
    if-ne v0, v1, :cond_2

    .line 34
    .line 35
    check-cast p0, [C

    .line 36
    .line 37
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([C)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0

    .line 42
    :cond_2
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 43
    .line 44
    if-ne v0, v1, :cond_3

    .line 45
    .line 46
    check-cast p0, [D

    .line 47
    .line 48
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([D)I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    return p0

    .line 53
    :cond_3
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 54
    .line 55
    if-ne v0, v1, :cond_4

    .line 56
    .line 57
    check-cast p0, [F

    .line 58
    .line 59
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    return p0

    .line 64
    :cond_4
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 65
    .line 66
    if-ne v0, v1, :cond_5

    .line 67
    .line 68
    check-cast p0, [I

    .line 69
    .line 70
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    return p0

    .line 75
    :cond_5
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 76
    .line 77
    if-ne v0, v1, :cond_6

    .line 78
    .line 79
    check-cast p0, [J

    .line 80
    .line 81
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([J)I

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    return p0

    .line 86
    :cond_6
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 87
    .line 88
    if-ne v0, v1, :cond_7

    .line 89
    .line 90
    check-cast p0, [S

    .line 91
    .line 92
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([S)I

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    return p0

    .line 97
    :cond_7
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 98
    .line 99
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 100
    .line 101
    .line 102
    throw p0
.end method

.method private static throwErrorIfUnsupportedType(Ljava/lang/Object;)V
    .locals 2

    .line 1
    instance-of v0, p0, Ljava/util/Collection;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    instance-of v0, p0, Ljava/util/List;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string v1, "Cannot check equality on collections other than lists: "

    .line 21
    .line 22
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    :cond_1
    :goto_0
    instance-of p0, p0, Ljava/util/Map;

    .line 31
    .line 32
    if-nez p0, :cond_2

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 36
    .line 37
    const-string v0, "Cannot check equality on maps"

    .line 38
    .line 39
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0
.end method
