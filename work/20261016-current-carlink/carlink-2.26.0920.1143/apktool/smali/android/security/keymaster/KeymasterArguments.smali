.class public Landroid/security/keymaster/KeymasterArguments;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/keymaster/KeymasterArguments;",
            ">;"
        }
    .end annotation
.end field

.field public static final UINT32_MAX_VALUE:J = 0xffffffffL

.field private static final UINT32_RANGE:J = 0x100000000L

.field public static final UINT64_MAX_VALUE:Ljava/math/BigInteger;

.field private static final UINT64_RANGE:Ljava/math/BigInteger;


# instance fields
.field private mArguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/security/keymaster/KeymasterArgument;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 2
    .line 3
    const/16 v1, 0x40

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sput-object v1, Landroid/security/keymaster/KeymasterArguments;->UINT64_RANGE:Ljava/math/BigInteger;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Landroid/security/keymaster/KeymasterArguments;->UINT64_MAX_VALUE:Ljava/math/BigInteger;

    .line 16
    .line 17
    new-instance v0, Landroid/security/keymaster/KeymasterArguments$1;

    .line 18
    .line 19
    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments$1;-><init>()V

    .line 20
    .line 21
    .line 22
    sput-object v0, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget-object v0, Landroid/security/keymaster/KeymasterArgument;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/security/keymaster/KeymasterArguments$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArguments;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private addEnumTag(II)V
    .locals 2

    iget-object v0, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    new-instance v1, Landroid/security/keymaster/KeymasterIntArgument;

    invoke-direct {v1, p1, p2}, Landroid/security/keymaster/KeymasterIntArgument;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addLongTag(ILjava/math/BigInteger;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    sget-object v0, Landroid/security/keymaster/KeymasterArguments;->UINT64_MAX_VALUE:Ljava/math/BigInteger;

    .line 9
    .line 10
    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-gtz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    .line 17
    .line 18
    new-instance v1, Landroid/security/keymaster/KeymasterLongArgument;

    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/math/BigInteger;->longValue()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    invoke-direct {v1, p1, v2, v3}, Landroid/security/keymaster/KeymasterLongArgument;-><init>(IJ)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v1, "Long tag value out of range: "

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1
.end method

.method private getArgumentByTag(I)Landroid/security/keymaster/KeymasterArgument;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/security/keymaster/KeymasterArgument;

    .line 18
    .line 19
    iget v2, v1, Landroid/security/keymaster/KeymasterArgument;->tag:I

    .line 20
    .line 21
    if-ne v2, p1, :cond_0

    .line 22
    .line 23
    return-object v1

    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    return-object p1
.end method

.method private getEnumTagValue(Landroid/security/keymaster/KeymasterArgument;)I
    .locals 0

    check-cast p1, Landroid/security/keymaster/KeymasterIntArgument;

    iget p1, p1, Landroid/security/keymaster/KeymasterIntArgument;->value:I

    return p1
.end method

.method private getLongTagValue(Landroid/security/keymaster/KeymasterArgument;)Ljava/math/BigInteger;
    .locals 2

    check-cast p1, Landroid/security/keymaster/KeymasterLongArgument;

    iget-wide v0, p1, Landroid/security/keymaster/KeymasterLongArgument;->value:J

    invoke-static {v0, v1}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public static toUint64(J)Ljava/math/BigInteger;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    sget-object p1, Landroid/security/keymaster/KeymasterArguments;->UINT64_RANGE:Ljava/math/BigInteger;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method


# virtual methods
.method public addBoolean(I)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x70000000

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    .line 10
    .line 11
    new-instance v1, Landroid/security/keymaster/KeymasterBooleanArgument;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Landroid/security/keymaster/KeymasterBooleanArgument;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string v1, "Not a boolean tag: "

    .line 23
    .line 24
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method public addBytes(I[B)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, -0x70000000

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    .line 12
    .line 13
    new-instance v1, Landroid/security/keymaster/KeymasterBlobArgument;

    .line 14
    .line 15
    invoke-direct {v1, p1, p2}, Landroid/security/keymaster/KeymasterBlobArgument;-><init>(I[B)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 23
    .line 24
    const-string/jumbo p2, "value == nulll"

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    const-string v0, "Not a bytes tag: "

    .line 34
    .line 35
    invoke-static {v0, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p2
.end method

.method public addDate(ILjava/util/Date;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x60000000

    .line 6
    .line 7
    if-ne v0, v1, :cond_2

    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    cmp-long v0, v0, v2

    .line 18
    .line 19
    if-ltz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    .line 22
    .line 23
    new-instance v1, Landroid/security/keymaster/KeymasterDateArgument;

    .line 24
    .line 25
    invoke-direct {v1, p1, p2}, Landroid/security/keymaster/KeymasterDateArgument;-><init>(ILjava/util/Date;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v1, "Date tag value out of range: "

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 53
    .line 54
    const-string/jumbo p2, "value == nulll"

    .line 55
    .line 56
    .line 57
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 62
    .line 63
    const-string v0, "Not a date tag: "

    .line 64
    .line 65
    invoke-static {v0, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p2
.end method

.method public addDateIfNotNull(ILjava/util/Date;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x60000000

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Landroid/security/keymaster/KeymasterArguments;->addDate(ILjava/util/Date;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void

    .line 15
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string v0, "Not a date tag: "

    .line 18
    .line 19
    invoke-static {v0, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p2
.end method

.method public addEnum(II)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x10000000

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    const/high16 v1, 0x20000000

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    const-string v0, "Not an enum or repeating enum tag: "

    .line 17
    .line 18
    invoke-static {v0, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p2

    .line 26
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/security/keymaster/KeymasterArguments;->addEnumTag(II)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public varargs addEnums(I[I)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x20000000

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    array-length v0, p2

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    .line 13
    aget v2, p2, v1

    .line 14
    .line 15
    invoke-direct {p0, p1, v2}, Landroid/security/keymaster/KeymasterArguments;->addEnumTag(II)V

    .line 16
    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void

    .line 22
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string v0, "Not a repeating enum tag: "

    .line 25
    .line 26
    invoke-static {v0, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p2
.end method

.method public addUnsignedInt(IJ)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x30000000

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    const/high16 v1, 0x40000000    # 2.0f

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    const-string p3, "Not an int or repeating int tag: "

    .line 17
    .line 18
    invoke-static {p3, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p2

    .line 26
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    .line 27
    .line 28
    cmp-long v0, p2, v0

    .line 29
    .line 30
    if-ltz v0, :cond_2

    .line 31
    .line 32
    const-wide v0, 0xffffffffL

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    cmp-long v0, p2, v0

    .line 38
    .line 39
    if-gtz v0, :cond_2

    .line 40
    .line 41
    iget-object v0, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    .line 42
    .line 43
    new-instance v1, Landroid/security/keymaster/KeymasterIntArgument;

    .line 44
    .line 45
    long-to-int p2, p2

    .line 46
    invoke-direct {v1, p1, p2}, Landroid/security/keymaster/KeymasterIntArgument;-><init>(II)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 54
    .line 55
    const-string v0, "Int tag value out of range: "

    .line 56
    .line 57
    invoke-static {v0, p2, p3}, Landroid/accessibilityservice/c;->f(Ljava/lang/String;J)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1
.end method

.method public addUnsignedLong(ILjava/math/BigInteger;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x50000000

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    const/high16 v1, -0x60000000

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    const-string v0, "Not a long or repeating long tag: "

    .line 17
    .line 18
    invoke-static {v0, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p2

    .line 26
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/security/keymaster/KeymasterArguments;->addLongTag(ILjava/math/BigInteger;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public containsTag(I)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArguments;->getArgumentByTag(I)Landroid/security/keymaster/KeymasterArgument;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBoolean(I)Z
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x70000000

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArguments;->getArgumentByTag(I)Landroid/security/keymaster/KeymasterArgument;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_0
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string v1, "Not a boolean tag: "

    .line 22
    .line 23
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0
.end method

.method public getBytes(I[B)[B
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, -0x70000000

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArguments;->getArgumentByTag(I)Landroid/security/keymaster/KeymasterArgument;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    return-object p2

    .line 16
    :cond_0
    check-cast p1, Landroid/security/keymaster/KeymasterBlobArgument;

    .line 17
    .line 18
    iget-object p1, p1, Landroid/security/keymaster/KeymasterBlobArgument;->blob:[B

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const-string v0, "Not a bytes tag: "

    .line 24
    .line 25
    invoke-static {v0, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p2
.end method

.method public getDate(ILjava/util/Date;)Ljava/util/Date;
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x60000000

    .line 6
    .line 7
    if-ne v0, v1, :cond_2

    .line 8
    .line 9
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArguments;->getArgumentByTag(I)Landroid/security/keymaster/KeymasterArgument;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-object p2

    .line 16
    :cond_0
    check-cast v0, Landroid/security/keymaster/KeymasterDateArgument;

    .line 17
    .line 18
    iget-object p2, v0, Landroid/security/keymaster/KeymasterDateArgument;->date:Ljava/util/Date;

    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    const-wide/16 v2, 0x0

    .line 25
    .line 26
    cmp-long v0, v0, v2

    .line 27
    .line 28
    if-ltz v0, :cond_1

    .line 29
    .line 30
    return-object p2

    .line 31
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    const-string v0, "Tag value too large. Tag: "

    .line 34
    .line 35
    invoke-static {v0, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p2

    .line 43
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    const-string v0, "Tag is not a date type: "

    .line 46
    .line 47
    invoke-static {v0, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p2
.end method

.method public getEnum(II)I
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x10000000

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArguments;->getArgumentByTag(I)Landroid/security/keymaster/KeymasterArgument;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    return p2

    .line 16
    :cond_0
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArguments;->getEnumTagValue(Landroid/security/keymaster/KeymasterArgument;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const-string v0, "Not an enum tag: "

    .line 24
    .line 25
    invoke-static {v0, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p2
.end method

.method public getEnums(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x20000000

    .line 6
    .line 7
    if-ne v0, v1, :cond_2

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroid/security/keymaster/KeymasterArgument;

    .line 31
    .line 32
    iget v3, v2, Landroid/security/keymaster/KeymasterArgument;->tag:I

    .line 33
    .line 34
    if-ne v3, p1, :cond_0

    .line 35
    .line 36
    invoke-direct {p0, v2}, Landroid/security/keymaster/KeymasterArguments;->getEnumTagValue(Landroid/security/keymaster/KeymasterArgument;)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-object v0

    .line 49
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    const-string v1, "Not a repeating enum tag: "

    .line 52
    .line 53
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v0
.end method

.method public getUnsignedInt(IJ)J
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x30000000

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArguments;->getArgumentByTag(I)Landroid/security/keymaster/KeymasterArgument;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    return-wide p2

    .line 16
    :cond_0
    check-cast p1, Landroid/security/keymaster/KeymasterIntArgument;

    .line 17
    .line 18
    iget p1, p1, Landroid/security/keymaster/KeymasterIntArgument;->value:I

    .line 19
    .line 20
    int-to-long p1, p1

    .line 21
    const-wide v0, 0xffffffffL

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    and-long/2addr p1, v0

    .line 27
    return-wide p1

    .line 28
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    const-string p3, "Not an int tag: "

    .line 31
    .line 32
    invoke-static {p3, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p2
.end method

.method public getUnsignedLongs(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, -0x60000000

    .line 6
    .line 7
    if-ne v0, v1, :cond_2

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroid/security/keymaster/KeymasterArgument;

    .line 31
    .line 32
    iget v3, v2, Landroid/security/keymaster/KeymasterArgument;->tag:I

    .line 33
    .line 34
    if-ne v3, p1, :cond_0

    .line 35
    .line 36
    invoke-direct {p0, v2}, Landroid/security/keymaster/KeymasterArguments;->getLongTagValue(Landroid/security/keymaster/KeymasterArgument;)Ljava/math/BigInteger;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return-object v0

    .line 45
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 46
    .line 47
    const-string v1, "Tag is not a repeating long: "

    .line 48
    .line 49
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    iget-object v0, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    sget-object v1, Landroid/security/keymaster/KeymasterArgument;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
