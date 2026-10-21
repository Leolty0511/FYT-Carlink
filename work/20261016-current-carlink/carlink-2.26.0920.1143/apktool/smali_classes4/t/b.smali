.class public abstract Lt/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lp/b;

.field public static final b:Lp/b;

.field public static final c:[Ljava/lang/Object;

.field public static final d:[C

.field public static final e:Lf/f;

.field public static f:Lf/f;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lp/b;

    .line 2
    .line 3
    const-string v1, "CLOSED_EMPTY"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lp/b;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lt/b;->a:Lp/b;

    .line 9
    .line 10
    new-instance v0, Lp/b;

    .line 11
    .line 12
    const-string v1, "NULL"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lp/b;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lt/b;->b:Lp/b;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    new-array v0, v0, [Ljava/lang/Object;

    .line 21
    .line 22
    sput-object v0, Lt/b;->c:[Ljava/lang/Object;

    .line 23
    .line 24
    const/16 v0, 0x10

    .line 25
    .line 26
    new-array v0, v0, [C

    .line 27
    .line 28
    fill-array-data v0, :array_0

    .line 29
    .line 30
    .line 31
    sput-object v0, Lt/b;->d:[C

    .line 32
    .line 33
    new-instance v0, Lf/f;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-direct {v0, v1, v1, v1}, Lf/f;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lt/b;->e:Lf/f;

    .line 40
    .line 41
    return-void

    .line 42
    nop

    .line 43
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Ljava/lang/String;IIII)I
    .locals 7

    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_1

    const p3, 0x7fffffff

    :cond_1
    int-to-long v0, p1

    int-to-long v2, p2

    int-to-long v4, p3

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lt/b;->z(JJJLjava/lang/String;)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static B(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "lateinit property "

    .line 2
    .line 3
    const-string v1, " has not been initialized"

    .line 4
    .line 5
    invoke-static {v0, p0, v1}, Landroid/accessibilityservice/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Lkotlin/UninitializedPropertyAccessException;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lkotlin/UninitializedPropertyAccessException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-class p0, Lt/b;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0, v0}, Lt/b;->x(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public static final C(Ljava/util/Collection;)[Ljava/lang/Object;
    .locals 5

    .line 1
    const-string v0, "collection"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    sget-object v1, Lt/b;->c:[Ljava/lang/Object;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    move v4, v1

    .line 30
    move-object v1, v0

    .line 31
    move v0, v4

    .line 32
    :goto_0
    add-int/lit8 v2, v0, 0x1

    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    aput-object v3, v1, v0

    .line 39
    .line 40
    array-length v0, v1

    .line 41
    if-lt v2, v0, :cond_5

    .line 42
    .line 43
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    mul-int/lit8 v0, v2, 0x3

    .line 51
    .line 52
    add-int/lit8 v0, v0, 0x1

    .line 53
    .line 54
    ushr-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    if-gt v0, v2, :cond_4

    .line 57
    .line 58
    const v0, 0x7ffffffd

    .line 59
    .line 60
    .line 61
    if-ge v2, v0, :cond_3

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    new-instance p0, Ljava/lang/OutOfMemoryError;

    .line 65
    .line 66
    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    .line 67
    .line 68
    .line 69
    throw p0

    .line 70
    :cond_4
    :goto_1
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    const-string v0, "copyOf(result, newSize)"

    .line 75
    .line 76
    invoke-static {v1, v0}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_6

    .line 85
    .line 86
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const-string p0, "copyOf(result, size)"

    .line 91
    .line 92
    invoke-static {v1, p0}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :goto_2
    return-object v1

    .line 96
    :cond_6
    :goto_3
    move v0, v2

    .line 97
    goto :goto_0
.end method

.method public static final D(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5

    .line 1
    const-string v0, "collection"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    array-length p0, p1

    .line 18
    if-lez p0, :cond_8

    .line 19
    .line 20
    aput-object v1, p1, v2

    .line 21
    .line 22
    goto/16 :goto_2

    .line 23
    .line 24
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    array-length p0, p1

    .line 35
    if-lez p0, :cond_8

    .line 36
    .line 37
    aput-object v1, p1, v2

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_1
    array-length v3, p1

    .line 41
    if-gt v0, v3, :cond_2

    .line 42
    .line 43
    move-object v0, p1

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string v3, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>"

    .line 58
    .line 59
    invoke-static {v0, v3}, Lt/b;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    check-cast v0, [Ljava/lang/Object;

    .line 63
    .line 64
    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 65
    .line 66
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    aput-object v4, v0, v2

    .line 71
    .line 72
    array-length v2, v0

    .line 73
    if-lt v3, v2, :cond_6

    .line 74
    .line 75
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_3

    .line 80
    .line 81
    move-object p1, v0

    .line 82
    goto :goto_2

    .line 83
    :cond_3
    mul-int/lit8 v2, v3, 0x3

    .line 84
    .line 85
    add-int/lit8 v2, v2, 0x1

    .line 86
    .line 87
    ushr-int/lit8 v2, v2, 0x1

    .line 88
    .line 89
    if-gt v2, v3, :cond_5

    .line 90
    .line 91
    const v2, 0x7ffffffd

    .line 92
    .line 93
    .line 94
    if-ge v3, v2, :cond_4

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_4
    new-instance p0, Ljava/lang/OutOfMemoryError;

    .line 98
    .line 99
    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    .line 100
    .line 101
    .line 102
    throw p0

    .line 103
    :cond_5
    :goto_1
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const-string v2, "copyOf(result, newSize)"

    .line 108
    .line 109
    invoke-static {v0, v2}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-nez v2, :cond_9

    .line 118
    .line 119
    if-ne v0, p1, :cond_7

    .line 120
    .line 121
    aput-object v1, p1, v3

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_7
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    const-string p1, "copyOf(result, size)"

    .line 129
    .line 130
    invoke-static {p0, p1}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    move-object p1, p0

    .line 134
    :cond_8
    :goto_2
    return-object p1

    .line 135
    :cond_9
    :goto_3
    move v2, v3

    .line 136
    goto :goto_0
.end method

.method public static E([B)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    array-length v1, p0

    .line 4
    mul-int/lit8 v1, v1, 0x2

    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7
    .line 8
    .line 9
    array-length v1, p0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_0

    .line 12
    .line 13
    sget-object v3, Lt/b;->d:[C

    .line 14
    .line 15
    aget-byte v4, p0, v2

    .line 16
    .line 17
    and-int/lit16 v4, v4, 0xf0

    .line 18
    .line 19
    shr-int/lit8 v4, v4, 0x4

    .line 20
    .line 21
    aget-char v4, v3, v4

    .line 22
    .line 23
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    aget-byte v4, p0, v2

    .line 27
    .line 28
    and-int/lit8 v4, v4, 0xf

    .line 29
    .line 30
    aget-char v3, v3, v4

    .line 31
    .line 32
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const-string v0, "sb.toString()"

    .line 43
    .line 44
    invoke-static {p0, v0}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-object p0
.end method

.method public static final F(Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    const-string v0, "with(entries.iterator().\u2026ingletonMap(key, value) }"

    invoke-static {p0, v0}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static final varargs b([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 3

    array-length v0, p0

    if-nez v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Lt/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lt/a;-><init>([Ljava/lang/Object;Z)V

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static c(Lz/p;)V
    .locals 4

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    instance-of v0, p0, Lkotlin/jvm/internal/e;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    move-object v0, p0

    .line 11
    check-cast v0, Lkotlin/jvm/internal/e;

    .line 12
    .line 13
    invoke-interface {v0}, Lkotlin/jvm/internal/e;->getArity()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    instance-of v0, p0, Lz/a;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    move v0, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    instance-of v0, p0, Lz/l;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    move v0, v3

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    move v0, v1

    .line 31
    :goto_0
    if-ne v0, v1, :cond_3

    .line 32
    .line 33
    move v2, v3

    .line 34
    :cond_3
    if-eqz v2, :cond_4

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const-string v0, " cannot be cast to kotlin.jvm.functions.Function2"

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    new-instance v0, Ljava/lang/ClassCastException;

    .line 52
    .line 53
    invoke-direct {v0, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-class p0, Lt/b;

    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {p0, v0}, Lt/b;->x(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 63
    .line 64
    .line 65
    throw v0

    .line 66
    :cond_5
    :goto_1
    return-void
.end method

.method public static d(IIF)Ll/c;
    .locals 11

    .line 1
    if-ge p0, p1, :cond_0

    .line 2
    .line 3
    move v1, p1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    move v1, p0

    .line 6
    :goto_0
    if-le p0, p1, :cond_1

    .line 7
    .line 8
    move v2, p1

    .line 9
    goto :goto_1

    .line 10
    :cond_1
    move v2, p0

    .line 11
    :goto_1
    mul-int v0, v1, v1

    .line 12
    .line 13
    mul-int v3, v2, v2

    .line 14
    .line 15
    add-int/2addr v3, v0

    .line 16
    int-to-double v3, v3

    .line 17
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 18
    .line 19
    .line 20
    move-result-wide v5

    .line 21
    int-to-float v0, v1

    .line 22
    int-to-float v3, v2

    .line 23
    div-float v4, v0, v3

    .line 24
    .line 25
    if-ge p0, p1, :cond_2

    .line 26
    .line 27
    sget-object p0, Lcom/syu/carlink/utils/ScreenDensityCalculator$DeviceType;->PORTRAIT:Lcom/syu/carlink/utils/ScreenDensityCalculator$DeviceType;

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    sget-object p0, Lcom/syu/carlink/utils/ScreenDensityCalculator$DeviceType;->LANDSCAPE:Lcom/syu/carlink/utils/ScreenDensityCalculator$DeviceType;

    .line 31
    .line 32
    :goto_2
    move-object v3, p0

    .line 33
    const-wide/high16 p0, 0x4089000000000000L    # 800.0

    .line 34
    .line 35
    cmpg-double p0, v5, p0

    .line 36
    .line 37
    if-gez p0, :cond_3

    .line 38
    .line 39
    const/high16 p0, 0x40e00000    # 7.0f

    .line 40
    .line 41
    :goto_3
    move v7, p0

    .line 42
    goto :goto_4

    .line 43
    :cond_3
    const-wide p0, 0x408d300000000000L    # 934.0

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    cmpg-double p0, v5, p0

    .line 49
    .line 50
    if-gez p0, :cond_4

    .line 51
    .line 52
    const/high16 p0, 0x41000000    # 8.0f

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_4
    const-wide p0, 0x4092880000000000L    # 1186.0

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    cmpg-double p0, v5, p0

    .line 61
    .line 62
    if-gez p0, :cond_5

    .line 63
    .line 64
    const/high16 p0, 0x41100000    # 9.0f

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_5
    const-wide/high16 p0, 0x4094000000000000L    # 1280.0

    .line 68
    .line 69
    cmpg-double p0, v5, p0

    .line 70
    .line 71
    if-gez p0, :cond_6

    .line 72
    .line 73
    const/high16 p0, 0x41200000    # 10.0f

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_6
    const-wide p0, 0x4096f40000000000L    # 1469.0

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    cmpg-double p0, v5, p0

    .line 82
    .line 83
    if-gez p0, :cond_7

    .line 84
    .line 85
    const p0, 0x41233333    # 10.2f

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_7
    const-wide p0, 0x40a1360000000000L    # 2203.0

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    cmpg-double p0, v5, p0

    .line 95
    .line 96
    if-gez p0, :cond_8

    .line 97
    .line 98
    const/high16 p0, 0x41300000    # 11.0f

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_8
    const-wide p0, 0x40a23a0000000000L    # 2333.0

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    cmpg-double p0, v5, p0

    .line 107
    .line 108
    if-gez p0, :cond_9

    .line 109
    .line 110
    const/high16 p0, 0x41400000    # 12.0f

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_9
    const-wide p0, 0x40a5e00000000000L    # 2800.0

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    cmpg-double p0, v5, p0

    .line 119
    .line 120
    if-gez p0, :cond_a

    .line 121
    .line 122
    const/high16 p0, 0x41700000    # 15.0f

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_a
    const-wide/high16 p0, 0x40a9000000000000L    # 3200.0

    .line 126
    .line 127
    cmpg-double p0, v5, p0

    .line 128
    .line 129
    if-gez p0, :cond_b

    .line 130
    .line 131
    const/high16 p0, 0x41980000    # 19.0f

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_b
    const/high16 p0, 0x41c00000    # 24.0f

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :goto_4
    float-to-double p0, v7

    .line 138
    div-double p0, v5, p0

    .line 139
    .line 140
    double-to-float p0, p0

    .line 141
    mul-float/2addr p0, p2

    .line 142
    sget-object p1, Lcom/syu/carlink/utils/ScreenDensityCalculator$DeviceType;->PORTRAIT:Lcom/syu/carlink/utils/ScreenDensityCalculator$DeviceType;

    .line 143
    .line 144
    if-ne v3, p1, :cond_c

    .line 145
    .line 146
    const/high16 p2, 0x3f400000    # 0.75f

    .line 147
    .line 148
    mul-float/2addr p0, p2

    .line 149
    :cond_c
    if-ne v3, p1, :cond_d

    .line 150
    .line 151
    const/high16 p1, 0x42f00000    # 120.0f

    .line 152
    .line 153
    const/high16 p2, 0x435c0000    # 220.0f

    .line 154
    .line 155
    invoke-static {p0, p1, p2}, Lt/b;->k(FFF)F

    .line 156
    .line 157
    .line 158
    move-result p0

    .line 159
    goto :goto_5

    .line 160
    :cond_d
    const/high16 p1, 0x430c0000    # 140.0f

    .line 161
    .line 162
    const/high16 p2, 0x438c0000    # 280.0f

    .line 163
    .line 164
    invoke-static {p0, p1, p2}, Lt/b;->k(FFF)F

    .line 165
    .line 166
    .line 167
    move-result p0

    .line 168
    :goto_5
    move v8, p0

    .line 169
    const/high16 p0, 0x43200000    # 160.0f

    .line 170
    .line 171
    div-float v9, v8, p0

    .line 172
    .line 173
    const/high16 p0, 0x3f800000    # 1.0f

    .line 174
    .line 175
    mul-float v10, v9, p0

    .line 176
    .line 177
    new-instance p0, Ll/c;

    .line 178
    .line 179
    move-object v0, p0

    .line 180
    invoke-direct/range {v0 .. v10}, Ll/c;-><init>(IILcom/syu/carlink/utils/ScreenDensityCalculator$DeviceType;FDFFFF)V

    .line 181
    .line 182
    .line 183
    return-object p0
.end method

.method public static e(Ljava/lang/Object;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    .line 7
    .line 8
    .line 9
    const-class v0, Lt/b;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0, p0}, Lt/b;->x(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 16
    .line 17
    .line 18
    throw p0
.end method

.method public static f(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 5
    .line 6
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-class p1, Lt/b;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1, p0}, Lt/b;->x(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 16
    .line 17
    .line 18
    throw p0
.end method

.method public static g(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 5
    .line 6
    const-string v0, " must not be null"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-class p1, Lt/b;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1, p0}, Lt/b;->x(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public static h(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 5
    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x4

    .line 15
    aget-object v0, v0, v1

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v2, "Parameter specified as non-null is null: method "

    .line 26
    .line 27
    const-string v3, "."

    .line 28
    .line 29
    const-string v4, ", parameter "

    .line 30
    .line 31
    invoke-static {v2, v1, v3, v0, v4}, Landroid/accessibilityservice/c;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-class p1, Lt/b;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p1, p0}, Lt/b;->x(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 52
    .line 53
    .line 54
    throw p0
.end method

.method public static final i(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    invoke-static {p1, p0}, Lkotlin/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public static j(I)V
    .locals 3

    .line 1
    and-int/lit16 p0, p0, 0xff

    .line 2
    .line 3
    const v0, 0x10400

    .line 4
    .line 5
    .line 6
    or-int/2addr p0, v0

    .line 7
    new-instance v0, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "param0"

    .line 13
    .line 14
    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lcom/syu/jni/SyuJniNative;->a:Lcom/syu/jni/SyuJniNative;

    .line 18
    .line 19
    const/16 v1, 0xfb

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {p0, v1, v0, v2}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static final k(FFF)F
    .locals 2

    cmpl-float v0, p1, p2

    if-gtz v0, :cond_2

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    return p1

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    return p2

    :cond_1
    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot coerce value to an empty range: maximum "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " is less than minimum "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static l(Ljava/io/InputStream;)V
    .locals 8

    .line 1
    const-string v0, "HDL"

    .line 2
    .line 3
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/io/FileOutputStream;

    .line 9
    .line 10
    const-string v3, "/sdcard/carlink/logo/car_log.png"

    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/16 v4, 0x400

    .line 16
    .line 17
    :try_start_0
    new-array v4, v4, [B

    .line 18
    .line 19
    :goto_0
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    const/4 v6, 0x0

    .line 24
    if-lez v5, :cond_0

    .line 25
    .line 26
    const/4 v7, 0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    move v7, v6

    .line 29
    :goto_1
    if-eqz v7, :cond_1

    .line 30
    .line 31
    invoke-virtual {v2, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 36
    .line 37
    .line 38
    invoke-static {p0}, Lt/b;->v(Ljava/io/InputStream;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v5, "copyFile  srcMd5: "

    .line 48
    .line 49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-static {v0, v4}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    const/4 v4, 0x0

    .line 66
    invoke-static {v1, v4}, Lt/b;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 70
    .line 71
    .line 72
    :catch_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 73
    .line 74
    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v1}, Lt/b;->v(Ljava/io/InputStream;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const-string v2, "copyFile  dstMd5: "

    .line 82
    .line 83
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-static {v0, v2}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-static {p0, v1}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_2

    .line 95
    .line 96
    const-string v0, "persist.lsec.cp.logo_md5"

    .line 97
    .line 98
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_2
    return-void

    .line 102
    :catchall_0
    move-exception p0

    .line 103
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 104
    :catchall_1
    move-exception v0

    .line 105
    invoke-static {v1, p0}, Lt/b;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    throw v0
.end method

.method public static final m(CCZ)Z
    .locals 2

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
    if-nez p2, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eq p0, p1, :cond_3

    .line 18
    .line 19
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-ne p0, p1, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    move v0, v1

    .line 31
    :cond_3
    :goto_0
    return v0
.end method

.method public static final n(Ld0/c;)Ljava/lang/Class;
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p0, Lkotlin/jvm/internal/b;

    .line 7
    .line 8
    invoke-interface {p0}, Lkotlin/jvm/internal/b;->a()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    sparse-switch v1, :sswitch_data_0

    .line 28
    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :sswitch_0
    const-string v1, "short"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    goto/16 :goto_0

    .line 41
    .line 42
    :cond_1
    const-class p0, Ljava/lang/Short;

    .line 43
    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    :sswitch_1
    const-string v1, "float"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const-class p0, Ljava/lang/Float;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :sswitch_2
    const-string v1, "boolean"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_3

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    const-class p0, Ljava/lang/Boolean;

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :sswitch_3
    const-string v1, "void"

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_4

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_4
    const-class p0, Ljava/lang/Void;

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :sswitch_4
    const-string v1, "long"

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_5

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_5
    const-class p0, Ljava/lang/Long;

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :sswitch_5
    const-string v1, "char"

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_6

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_6
    const-class p0, Ljava/lang/Character;

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :sswitch_6
    const-string v1, "byte"

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-nez v0, :cond_7

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_7
    const-class p0, Ljava/lang/Byte;

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :sswitch_7
    const-string v1, "int"

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_8

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_8
    const-class p0, Ljava/lang/Integer;

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :sswitch_8
    const-string v1, "double"

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-nez v0, :cond_9

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_9
    const-class p0, Ljava/lang/Double;

    .line 140
    .line 141
    :goto_0
    return-object p0

    .line 142
    nop

    .line 143
    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_8
        0x197ef -> :sswitch_7
        0x2e6108 -> :sswitch_6
        0x2e9356 -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x375194 -> :sswitch_3
        0x3db6c28 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x685847c -> :sswitch_0
    .end sparse-switch
.end method

.method public static o(Ljava/lang/String;Z)Z
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Ljava/lang/Class;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const-class v3, Ljava/lang/String;

    .line 6
    .line 7
    aput-object v3, v1, v2

    .line 8
    .line 9
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 10
    .line 11
    invoke-static {v3}, Lt/b;->e(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    aput-object v3, v1, v4

    .line 16
    .line 17
    new-array v0, v0, [Ljava/lang/Object;

    .line 18
    .line 19
    aput-object p0, v0, v2

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    aput-object p0, v0, v4

    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    const-string v2, "getBoolean"

    .line 29
    .line 30
    const-string v3, "android.os.SystemProperties"

    .line 31
    .line 32
    invoke-static {v3, p0, v2, v1, v0}, Lp/a;->d(Ljava/lang/String;Landroid/net/wifi/WifiManager;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Ljava/lang/Boolean;

    .line 37
    .line 38
    if-eqz p0, :cond_0

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    :cond_0
    return p1
.end method

.method public static p(ILjava/lang/String;)I
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Ljava/lang/Class;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const-class v3, Ljava/lang/String;

    .line 6
    .line 7
    aput-object v3, v1, v2

    .line 8
    .line 9
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 10
    .line 11
    invoke-static {v3}, Lt/b;->e(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    aput-object v3, v1, v4

    .line 16
    .line 17
    new-array v0, v0, [Ljava/lang/Object;

    .line 18
    .line 19
    aput-object p1, v0, v2

    .line 20
    .line 21
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    aput-object p1, v0, v4

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    const-string v2, "getInt"

    .line 29
    .line 30
    const-string v3, "android.os.SystemProperties"

    .line 31
    .line 32
    invoke-static {v3, p1, v2, v1, v0}, Lp/a;->d(Ljava/lang/String;Landroid/net/wifi/WifiManager;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/lang/Integer;

    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    :cond_0
    return p0
.end method

.method public static q(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    const-string v1, ""

    .line 9
    .line 10
    aput-object v1, v0, p0

    .line 11
    .line 12
    const-string p0, "android.os.SystemProperties"

    .line 13
    .line 14
    const-string v1, "get"

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {p0, v2, v1, v0}, Lp/a;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string v0, "invoke(\"android.os.Syste\u2026erties\", \"get\", key, def)"

    .line 22
    .line 23
    invoke-static {p0, v0}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    check-cast p0, Ljava/lang/String;

    .line 27
    .line 28
    return-object p0
.end method

.method public static final r(C)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final s(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "singletonList(element)"

    invoke-static {p0, v0}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final varargs t([Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .line 1
    array-length v0, p0

    .line 2
    if-lez v0, :cond_0

    .line 3
    .line 4
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-string v0, "asList(this)"

    .line 9
    .line 10
    invoke-static {p0, v0}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public static final u(I)I
    .locals 1

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ge p0, v0, :cond_1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_2

    int-to-float p0, p0

    const/high16 v0, 0x3f400000    # 0.75f

    div-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p0, v0

    float-to-int p0, p0

    goto :goto_0

    :cond_2
    const p0, 0x7fffffff

    :goto_0
    return p0
.end method

.method public static v(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .line 1
    const/16 v0, 0x400

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    :try_start_0
    const-string v1, "MD5"

    .line 6
    .line 7
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "getInstance(\"MD5\")"

    .line 12
    .line 13
    invoke-static {v1, v2}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-lez v2, :cond_0

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v1, v0, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "md5.digest()"

    .line 32
    .line 33
    invoke-static {v0, v1}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lt/b;->E([B)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    goto :goto_1

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto :goto_2

    .line 43
    :catch_0
    :try_start_1
    const-string v0, "null"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 46
    .line 47
    .line 48
    return-object v0

    .line 49
    :goto_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 50
    .line 51
    .line 52
    throw v0
.end method

.method public static w()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This function has a reified type parameter and thus can only be inlined at compilation time, not called directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static x(Ljava/lang/String;Ljava/lang/RuntimeException;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, -0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    :goto_0
    if-ge v3, v1, :cond_1

    .line 9
    .line 10
    aget-object v4, v0, v3

    .line 11
    .line 12
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    move v2, v3

    .line 23
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, [Ljava/lang/StackTraceElement;

    .line 33
    .line 34
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public static y(Ljava/io/Serializable;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final z(JJJLjava/lang/String;)J
    .locals 23

    .line 1
    move-wide/from16 v0, p2

    .line 2
    .line 3
    move-wide/from16 v2, p4

    .line 4
    .line 5
    move-object/from16 v4, p6

    .line 6
    .line 7
    sget v5, Lk0/h;->a:I

    .line 8
    .line 9
    :try_start_0
    invoke-static/range {p6 .. p6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    const/4 v6, 0x0

    .line 15
    :goto_0
    if-nez v6, :cond_0

    .line 16
    .line 17
    move-wide/from16 v8, p0

    .line 18
    .line 19
    goto/16 :goto_a

    .line 20
    .line 21
    :cond_0
    new-instance v7, Lc0/d;

    .line 22
    .line 23
    const/4 v8, 0x2

    .line 24
    const/16 v9, 0x24

    .line 25
    .line 26
    invoke-direct {v7, v8, v9}, Lc0/d;-><init>(II)V

    .line 27
    .line 28
    .line 29
    const/4 v10, 0x0

    .line 30
    const/4 v11, 0x1

    .line 31
    iget v7, v7, Lc0/b;->c:I

    .line 32
    .line 33
    const/16 v12, 0xa

    .line 34
    .line 35
    if-gt v12, v7, :cond_1

    .line 36
    .line 37
    move v7, v11

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v7, v10

    .line 40
    :goto_1
    if-eqz v7, :cond_12

    .line 41
    .line 42
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-nez v7, :cond_3

    .line 47
    .line 48
    :cond_2
    :goto_2
    move-object/from16 v19, v6

    .line 49
    .line 50
    goto/16 :goto_7

    .line 51
    .line 52
    :cond_3
    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    const/16 v9, 0x30

    .line 57
    .line 58
    if-ge v8, v9, :cond_4

    .line 59
    .line 60
    const/4 v9, -0x1

    .line 61
    goto :goto_3

    .line 62
    :cond_4
    if-ne v8, v9, :cond_5

    .line 63
    .line 64
    move v9, v10

    .line 65
    goto :goto_3

    .line 66
    :cond_5
    move v9, v11

    .line 67
    :goto_3
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    if-gez v9, :cond_8

    .line 73
    .line 74
    if-ne v7, v11, :cond_6

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_6
    const/16 v9, 0x2d

    .line 78
    .line 79
    if-ne v8, v9, :cond_7

    .line 80
    .line 81
    const-wide/high16 v13, -0x8000000000000000L

    .line 82
    .line 83
    move v8, v11

    .line 84
    goto :goto_4

    .line 85
    :cond_7
    const/16 v9, 0x2b

    .line 86
    .line 87
    if-ne v8, v9, :cond_2

    .line 88
    .line 89
    move v9, v10

    .line 90
    move v8, v11

    .line 91
    goto :goto_5

    .line 92
    :cond_8
    move v8, v10

    .line 93
    :goto_4
    move v9, v8

    .line 94
    :goto_5
    const-wide v15, -0x38e38e38e38e38eL    # -2.772000429909333E291

    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    const-wide/16 v17, 0x0

    .line 100
    .line 101
    move-wide/from16 v10, v17

    .line 102
    .line 103
    move-wide/from16 v17, v15

    .line 104
    .line 105
    :goto_6
    if-ge v8, v7, :cond_d

    .line 106
    .line 107
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    invoke-static {v5, v12}, Ljava/lang/Character;->digit(II)I

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    if-gez v5, :cond_9

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_9
    cmp-long v19, v10, v17

    .line 119
    .line 120
    if-gez v19, :cond_a

    .line 121
    .line 122
    cmp-long v17, v17, v15

    .line 123
    .line 124
    if-nez v17, :cond_2

    .line 125
    .line 126
    move-object/from16 v19, v6

    .line 127
    .line 128
    move/from16 v20, v7

    .line 129
    .line 130
    int-to-long v6, v12

    .line 131
    div-long v17, v13, v6

    .line 132
    .line 133
    cmp-long v6, v10, v17

    .line 134
    .line 135
    if-gez v6, :cond_b

    .line 136
    .line 137
    goto :goto_7

    .line 138
    :cond_a
    move-object/from16 v19, v6

    .line 139
    .line 140
    move/from16 v20, v7

    .line 141
    .line 142
    :cond_b
    int-to-long v6, v12

    .line 143
    mul-long/2addr v10, v6

    .line 144
    int-to-long v5, v5

    .line 145
    add-long v21, v13, v5

    .line 146
    .line 147
    cmp-long v7, v10, v21

    .line 148
    .line 149
    if-gez v7, :cond_c

    .line 150
    .line 151
    :goto_7
    const/4 v5, 0x0

    .line 152
    goto :goto_8

    .line 153
    :cond_c
    sub-long/2addr v10, v5

    .line 154
    add-int/lit8 v8, v8, 0x1

    .line 155
    .line 156
    move-object/from16 v6, v19

    .line 157
    .line 158
    move/from16 v7, v20

    .line 159
    .line 160
    goto :goto_6

    .line 161
    :cond_d
    move-object/from16 v19, v6

    .line 162
    .line 163
    if-eqz v9, :cond_e

    .line 164
    .line 165
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    goto :goto_8

    .line 170
    :cond_e
    neg-long v5, v10

    .line 171
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    :goto_8
    const/16 v6, 0x27

    .line 176
    .line 177
    const-string v7, "System property \'"

    .line 178
    .line 179
    if-eqz v5, :cond_11

    .line 180
    .line 181
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 182
    .line 183
    .line 184
    move-result-wide v8

    .line 185
    cmp-long v5, v0, v8

    .line 186
    .line 187
    if-gtz v5, :cond_f

    .line 188
    .line 189
    cmp-long v5, v8, v2

    .line 190
    .line 191
    if-gtz v5, :cond_f

    .line 192
    .line 193
    const/4 v10, 0x1

    .line 194
    goto :goto_9

    .line 195
    :cond_f
    const/4 v10, 0x0

    .line 196
    :goto_9
    if-eqz v10, :cond_10

    .line 197
    .line 198
    :goto_a
    return-wide v8

    .line 199
    :cond_10
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 200
    .line 201
    new-instance v10, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const-string v4, "\' should be in range "

    .line 210
    .line 211
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v0, ".."

    .line 218
    .line 219
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string v0, ", but is \'"

    .line 226
    .line 227
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    throw v5

    .line 248
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 249
    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string v2, "\' has unrecognized value \'"

    .line 259
    .line 260
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    move-object/from16 v5, v19

    .line 264
    .line 265
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    throw v0

    .line 283
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 284
    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    const-string v2, "radix 10 was not in valid range "

    .line 288
    .line 289
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    new-instance v2, Lc0/d;

    .line 293
    .line 294
    invoke-direct {v2, v8, v9}, Lc0/d;-><init>(II)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    throw v0
.end method
