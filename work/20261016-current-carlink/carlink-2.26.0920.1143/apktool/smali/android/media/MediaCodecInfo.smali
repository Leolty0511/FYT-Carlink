.class public final Landroid/media/MediaCodecInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodecInfo$CodecProfileLevel;,
        Landroid/media/MediaCodecInfo$EncoderCapabilities;,
        Landroid/media/MediaCodecInfo$VideoCapabilities;,
        Landroid/media/MediaCodecInfo$AudioCapabilities;,
        Landroid/media/MediaCodecInfo$CodecCapabilities;,
        Landroid/media/MediaCodecInfo$Feature;
    }
.end annotation


# static fields
.field private static final BITRATE_RANGE:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_MAX_SUPPORTED_INSTANCES:I = 0x20

.field private static final ERROR_NONE_SUPPORTED:I = 0x4

.field private static final ERROR_UNRECOGNIZED:I = 0x1

.field private static final ERROR_UNSUPPORTED:I = 0x2

.field private static final FRAME_RATE_RANGE:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_SUPPORTED_INSTANCES_LIMIT:I = 0x100

.field private static final POSITIVE_INTEGERS:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final POSITIVE_LONGS:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final POSITIVE_RATIONALS:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation
.end field

.field private static final SIZE_RANGE:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/MediaCodecInfo$CodecCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field private mIsEncoder:Z

.field private mName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const v2, 0x7fffffff

    .line 7
    .line 8
    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-static {v1, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    sput-object v3, Landroid/media/MediaCodecInfo;->POSITIVE_INTEGERS:Landroid/util/Range;

    .line 18
    .line 19
    const-wide/16 v3, 0x1

    .line 20
    .line 21
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-wide v4, 0x7fffffffffffffffL

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-static {v3, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    sput-object v3, Landroid/media/MediaCodecInfo;->POSITIVE_LONGS:Landroid/util/Range;

    .line 39
    .line 40
    new-instance v3, Landroid/util/Rational;

    .line 41
    .line 42
    invoke-direct {v3, v0, v2}, Landroid/util/Rational;-><init>(II)V

    .line 43
    .line 44
    .line 45
    new-instance v4, Landroid/util/Rational;

    .line 46
    .line 47
    invoke-direct {v4, v2, v0}, Landroid/util/Rational;-><init>(II)V

    .line 48
    .line 49
    .line 50
    invoke-static {v3, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Landroid/media/MediaCodecInfo;->POSITIVE_RATIONALS:Landroid/util/Range;

    .line 55
    .line 56
    const v0, 0x8000

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v1, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    sput-object v0, Landroid/media/MediaCodecInfo;->SIZE_RANGE:Landroid/util/Range;

    .line 68
    .line 69
    const/4 v0, 0x0

    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const/16 v1, 0x3c0

    .line 75
    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    sput-object v1, Landroid/media/MediaCodecInfo;->FRAME_RATE_RANGE:Landroid/util/Range;

    .line 85
    .line 86
    const v1, 0x1dcd6500

    .line 87
    .line 88
    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    sput-object v0, Landroid/media/MediaCodecInfo;->BITRATE_RANGE:Landroid/util/Range;

    .line 98
    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z[Landroid/media/MediaCodecInfo$CodecCapabilities;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/media/MediaCodecInfo;->mName:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p2, p0, Landroid/media/MediaCodecInfo;->mIsEncoder:Z

    .line 7
    .line 8
    new-instance p1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroid/media/MediaCodecInfo;->mCaps:Ljava/util/Map;

    .line 14
    .line 15
    array-length p1, p3

    .line 16
    const/4 p2, 0x0

    .line 17
    :goto_0
    if-ge p2, p1, :cond_0

    .line 18
    .line 19
    aget-object v0, p3, p2

    .line 20
    .line 21
    iget-object v1, p0, Landroid/media/MediaCodecInfo;->mCaps:Ljava/util/Map;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getMimeType()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    add-int/lit8 p2, p2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method public static synthetic access$000()Landroid/util/Range;
    .locals 1

    sget-object v0, Landroid/media/MediaCodecInfo;->POSITIVE_INTEGERS:Landroid/util/Range;

    return-object v0
.end method

.method public static synthetic access$200()Landroid/util/Range;
    .locals 1

    sget-object v0, Landroid/media/MediaCodecInfo;->BITRATE_RANGE:Landroid/util/Range;

    return-object v0
.end method

.method public static synthetic access$300()Landroid/util/Range;
    .locals 1

    sget-object v0, Landroid/media/MediaCodecInfo;->SIZE_RANGE:Landroid/util/Range;

    return-object v0
.end method

.method public static synthetic access$400()Landroid/util/Range;
    .locals 1

    sget-object v0, Landroid/media/MediaCodecInfo;->FRAME_RATE_RANGE:Landroid/util/Range;

    return-object v0
.end method

.method public static synthetic access$500()Landroid/util/Range;
    .locals 1

    sget-object v0, Landroid/media/MediaCodecInfo;->POSITIVE_LONGS:Landroid/util/Range;

    return-object v0
.end method

.method public static synthetic access$600()Landroid/util/Range;
    .locals 1

    sget-object v0, Landroid/media/MediaCodecInfo;->POSITIVE_RATIONALS:Landroid/util/Range;

    return-object v0
.end method

.method public static synthetic access$700(ILjava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/media/MediaCodecInfo;->checkPowerOfTwo(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static checkPowerOfTwo(ILjava/lang/String;)I
    .locals 1

    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/MediaCodecInfo;->mCaps:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->dup()Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string v0, "codec does not support type"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaCodecInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSupportedTypes()[Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/MediaCodecInfo;->mCaps:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    new-array v1, v1, [Ljava/lang/String;

    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, [Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public final isEncoder()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/MediaCodecInfo;->mIsEncoder:Z

    return v0
.end method

.method public makeRegular()Landroid/media/MediaCodecInfo;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroid/media/MediaCodecInfo;->mCaps:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isRegular()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    return-object v0

    .line 46
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    iget-object v2, p0, Landroid/media/MediaCodecInfo;->mCaps:Ljava/util/Map;

    .line 51
    .line 52
    invoke-interface {v2}, Ljava/util/Map;->size()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-ne v1, v2, :cond_3

    .line 57
    .line 58
    return-object p0

    .line 59
    :cond_3
    new-instance v1, Landroid/media/MediaCodecInfo;

    .line 60
    .line 61
    iget-object v2, p0, Landroid/media/MediaCodecInfo;->mName:Ljava/lang/String;

    .line 62
    .line 63
    iget-boolean v3, p0, Landroid/media/MediaCodecInfo;->mIsEncoder:Z

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    new-array v4, v4, [Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 70
    .line 71
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, [Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 76
    .line 77
    invoke-direct {v1, v2, v3, v0}, Landroid/media/MediaCodecInfo;-><init>(Ljava/lang/String;Z[Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    .line 78
    .line 79
    .line 80
    return-object v1
.end method
