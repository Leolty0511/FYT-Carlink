.class Landroid/media/WebVttParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/WebVttParser$Phase;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WebVttParser"


# instance fields
.field private mBuffer:Ljava/lang/String;

.field private mCue:Landroid/media/TextTrackCue;

.field private mCueTexts:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Landroid/media/WebVttCueListener;

.field private final mParseCueId:Landroid/media/WebVttParser$Phase;

.field private final mParseCueText:Landroid/media/WebVttParser$Phase;

.field private final mParseCueTime:Landroid/media/WebVttParser$Phase;

.field private final mParseHeader:Landroid/media/WebVttParser$Phase;

.field private final mParseStart:Landroid/media/WebVttParser$Phase;

.field private mPhase:Landroid/media/WebVttParser$Phase;

.field private final mSkipRest:Landroid/media/WebVttParser$Phase;


# direct methods
.method public constructor <init>(Landroid/media/WebVttCueListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/media/WebVttParser$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroid/media/WebVttParser$1;-><init>(Landroid/media/WebVttParser;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/media/WebVttParser;->mSkipRest:Landroid/media/WebVttParser$Phase;

    .line 10
    .line 11
    new-instance v0, Landroid/media/WebVttParser$2;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Landroid/media/WebVttParser$2;-><init>(Landroid/media/WebVttParser;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/media/WebVttParser;->mParseStart:Landroid/media/WebVttParser$Phase;

    .line 17
    .line 18
    new-instance v1, Landroid/media/WebVttParser$3;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Landroid/media/WebVttParser$3;-><init>(Landroid/media/WebVttParser;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Landroid/media/WebVttParser;->mParseHeader:Landroid/media/WebVttParser$Phase;

    .line 24
    .line 25
    new-instance v1, Landroid/media/WebVttParser$4;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Landroid/media/WebVttParser$4;-><init>(Landroid/media/WebVttParser;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Landroid/media/WebVttParser;->mParseCueId:Landroid/media/WebVttParser$Phase;

    .line 31
    .line 32
    new-instance v1, Landroid/media/WebVttParser$5;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Landroid/media/WebVttParser$5;-><init>(Landroid/media/WebVttParser;)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Landroid/media/WebVttParser;->mParseCueTime:Landroid/media/WebVttParser$Phase;

    .line 38
    .line 39
    new-instance v1, Landroid/media/WebVttParser$6;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Landroid/media/WebVttParser$6;-><init>(Landroid/media/WebVttParser;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Landroid/media/WebVttParser;->mParseCueText:Landroid/media/WebVttParser$Phase;

    .line 45
    .line 46
    iput-object v0, p0, Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;

    .line 47
    .line 48
    const-string v0, ""

    .line 49
    .line 50
    iput-object v0, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    .line 51
    .line 52
    iput-object p1, p0, Landroid/media/WebVttParser;->mListener:Landroid/media/WebVttCueListener;

    .line 53
    .line 54
    new-instance p1, Ljava/util/Vector;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Landroid/media/WebVttParser;->mCueTexts:Ljava/util/Vector;

    .line 60
    .line 61
    return-void
.end method

.method public static synthetic access$000(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;
    .locals 0

    iget-object p0, p0, Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;

    return-object p0
.end method

.method public static synthetic access$1000(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;
    .locals 0

    iget-object p0, p0, Landroid/media/WebVttParser;->mParseCueText:Landroid/media/WebVttParser$Phase;

    return-object p0
.end method

.method public static synthetic access$102(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;
    .locals 0

    iput-object p1, p0, Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;

    return-object p1
.end method

.method public static synthetic access$1100(Landroid/media/WebVttParser;)Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Landroid/media/WebVttParser;->mCueTexts:Ljava/util/Vector;

    return-object p0
.end method

.method public static synthetic access$200(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;
    .locals 0

    iget-object p0, p0, Landroid/media/WebVttParser;->mSkipRest:Landroid/media/WebVttParser$Phase;

    return-object p0
.end method

.method public static synthetic access$300(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;
    .locals 0

    iget-object p0, p0, Landroid/media/WebVttParser;->mParseHeader:Landroid/media/WebVttParser$Phase;

    return-object p0
.end method

.method public static synthetic access$400(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$500(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$600(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;
    .locals 0

    iget-object p0, p0, Landroid/media/WebVttParser;->mParseCueId:Landroid/media/WebVttParser$Phase;

    return-object p0
.end method

.method public static synthetic access$700(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;
    .locals 0

    iget-object p0, p0, Landroid/media/WebVttParser;->mParseCueTime:Landroid/media/WebVttParser$Phase;

    return-object p0
.end method

.method public static synthetic access$800(Landroid/media/WebVttParser;)Landroid/media/WebVttCueListener;
    .locals 0

    iget-object p0, p0, Landroid/media/WebVttParser;->mListener:Landroid/media/WebVttCueListener;

    return-object p0
.end method

.method public static synthetic access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;
    .locals 0

    iget-object p0, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    return-object p0
.end method

.method public static synthetic access$902(Landroid/media/WebVttParser;Landroid/media/TextTrackCue;)Landroid/media/TextTrackCue;
    .locals 0

    iput-object p1, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    return-object p1
.end method

.method private log_warning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\')"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\')"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (\'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    .line 2
    invoke-static {v1, p1, v0}, Landroid/accessibilityservice/c;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static parseFloatPercentage(Ljava/lang/String;)F
    .locals 2

    .line 1
    const-string v0, "%"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string v0, ".*[^0-9.].*"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    const/4 v0, 0x0

    .line 33
    cmpg-float v0, p0, v0

    .line 34
    .line 35
    if-ltz v0, :cond_0

    .line 36
    .line 37
    const/high16 v0, 0x42c80000    # 100.0f

    .line 38
    .line 39
    cmpl-float v0, p0, v0

    .line 40
    .line 41
    if-gtz v0, :cond_0

    .line 42
    .line 43
    return p0

    .line 44
    :cond_0
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 45
    .line 46
    const-string/jumbo v0, "is out of range"

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :catch_0
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 54
    .line 55
    const-string/jumbo v0, "is not a number"

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0

    .line 62
    :cond_1
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 63
    .line 64
    const-string v0, "contains an invalid character"

    .line 65
    .line 66
    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0

    .line 70
    :cond_2
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 71
    .line 72
    const-string v0, "does not end in %"

    .line 73
    .line 74
    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p0
.end method

.method public static parseIntPercentage(Ljava/lang/String;)I
    .locals 2

    .line 1
    const-string v0, "%"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string v0, ".*[^0-9].*"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-ltz p0, :cond_0

    .line 33
    .line 34
    const/16 v0, 0x64

    .line 35
    .line 36
    if-gt p0, v0, :cond_0

    .line 37
    .line 38
    return p0

    .line 39
    :cond_0
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 40
    .line 41
    const-string/jumbo v0, "is out of range"

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :catch_0
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 49
    .line 50
    const-string/jumbo v0, "is not a number"

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0

    .line 57
    :cond_1
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 58
    .line 59
    const-string v0, "contains an invalid character"

    .line 60
    .line 61
    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0

    .line 65
    :cond_2
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 66
    .line 67
    const-string v0, "does not end in %"

    .line 68
    .line 69
    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p0
.end method

.method public static parseTimestampMs(Ljava/lang/String;)J
    .locals 8

    .line 1
    const-string v0, "(\\d+:)?[0-5]\\d:[0-5]\\d\\.\\d{3}"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const-string v0, "\\."

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/4 v0, 0x0

    .line 17
    aget-object v1, p0, v0

    .line 18
    .line 19
    const-string v2, ":"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    array-length v2, v1

    .line 26
    const-wide/16 v3, 0x0

    .line 27
    .line 28
    :goto_0
    if-ge v0, v2, :cond_0

    .line 29
    .line 30
    aget-object v5, v1, v0

    .line 31
    .line 32
    const-wide/16 v6, 0x3c

    .line 33
    .line 34
    mul-long/2addr v3, v6

    .line 35
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v5

    .line 39
    add-long/2addr v3, v5

    .line 40
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-wide/16 v0, 0x3e8

    .line 44
    .line 45
    mul-long/2addr v3, v0

    .line 46
    const/4 v0, 0x1

    .line 47
    aget-object p0, p0, v0

    .line 48
    .line 49
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    add-long/2addr v0, v3

    .line 54
    return-wide v0

    .line 55
    :cond_1
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 56
    .line 57
    const-string/jumbo v0, "has invalid format"

    .line 58
    .line 59
    .line 60
    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p0
.end method

.method public static timeToString(J)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-wide/32 v1, 0x36ee80

    .line 5
    .line 6
    .line 7
    div-long v1, p0, v1

    .line 8
    .line 9
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    aput-object v1, v0, v2

    .line 15
    .line 16
    const-wide/32 v1, 0xea60

    .line 17
    .line 18
    .line 19
    div-long v1, p0, v1

    .line 20
    .line 21
    const-wide/16 v3, 0x3c

    .line 22
    .line 23
    rem-long/2addr v1, v3

    .line 24
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x1

    .line 29
    aput-object v1, v0, v2

    .line 30
    .line 31
    const-wide/16 v1, 0x3e8

    .line 32
    .line 33
    div-long v5, p0, v1

    .line 34
    .line 35
    rem-long/2addr v5, v3

    .line 36
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const/4 v4, 0x2

    .line 41
    aput-object v3, v0, v4

    .line 42
    .line 43
    rem-long/2addr p0, v1

    .line 44
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const/4 p1, 0x3

    .line 49
    aput-object p0, v0, p1

    .line 50
    .line 51
    const-string p0, "%d:%02d:%02d.%03d"

    .line 52
    .line 53
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method


# virtual methods
.method public eos()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "\r"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;

    .line 27
    .line 28
    iget-object v1, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    .line 29
    .line 30
    invoke-interface {v0, v1}, Landroid/media/WebVttParser$Phase;->parse(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v0, ""

    .line 34
    .line 35
    iput-object v0, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/media/WebVttParser;->yieldCue()V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Landroid/media/WebVttParser;->mParseStart:Landroid/media/WebVttParser$Phase;

    .line 41
    .line 42
    iput-object v0, p0, Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;

    .line 43
    .line 44
    return-void
.end method

.method public parse(Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "\u0000"

    .line 12
    .line 13
    const-string/jumbo v2, "\ufffd"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v0, "\r\n"

    .line 28
    .line 29
    const-string v1, "\n"

    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    .line 36
    .line 37
    const-string v0, "\r"

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    const/4 v1, 0x1

    .line 44
    const/4 v2, 0x0

    .line 45
    if-eqz p1, :cond_0

    .line 46
    .line 47
    iget-object p1, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    sub-int/2addr v3, v1

    .line 54
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    .line 59
    .line 60
    move p1, v1

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    move p1, v2

    .line 63
    :goto_0
    iget-object v3, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    .line 64
    .line 65
    const-string v4, "[\r\n]"

    .line 66
    .line 67
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    :goto_1
    array-length v4, v3

    .line 72
    sub-int/2addr v4, v1

    .line 73
    if-ge v2, v4, :cond_1

    .line 74
    .line 75
    iget-object v4, p0, Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;

    .line 76
    .line 77
    aget-object v5, v3, v2

    .line 78
    .line 79
    invoke-interface {v4, v5}, Landroid/media/WebVttParser$Phase;->parse(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    add-int/lit8 v2, v2, 0x1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    array-length v2, v3

    .line 86
    sub-int/2addr v2, v1

    .line 87
    aget-object v1, v3, v2

    .line 88
    .line 89
    iput-object v1, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    .line 90
    .line 91
    if-eqz p1, :cond_2

    .line 92
    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {p1, v1, v0}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iput-object p1, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    .line 105
    .line 106
    :cond_2
    return-void
.end method

.method public yieldCue()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/media/WebVttParser;->mCueTexts:Ljava/util/Vector;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    .line 14
    .line 15
    iget-object v1, p0, Landroid/media/WebVttParser;->mCueTexts:Ljava/util/Vector;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    new-array v1, v1, [Ljava/lang/String;

    .line 22
    .line 23
    iput-object v1, v0, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    .line 24
    .line 25
    iget-object v0, p0, Landroid/media/WebVttParser;->mCueTexts:Ljava/util/Vector;

    .line 26
    .line 27
    iget-object v1, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    .line 28
    .line 29
    iget-object v1, v1, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Landroid/media/WebVttParser;->mCueTexts:Ljava/util/Vector;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Landroid/media/WebVttParser;->mListener:Landroid/media/WebVttCueListener;

    .line 40
    .line 41
    iget-object v1, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    .line 42
    .line 43
    invoke-interface {v0, v1}, Landroid/media/WebVttCueListener;->onCueParsed(Landroid/media/TextTrackCue;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    .line 48
    .line 49
    return-void
.end method
