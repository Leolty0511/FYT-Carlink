.class Landroid/text/TextDirectionHeuristics$AnyStrong;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextDirectionHeuristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnyStrong"
.end annotation


# static fields
.field public static final INSTANCE_LTR:Landroid/text/TextDirectionHeuristics$AnyStrong;

.field public static final INSTANCE_RTL:Landroid/text/TextDirectionHeuristics$AnyStrong;


# instance fields
.field private final mLookForRtl:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/text/TextDirectionHeuristics$AnyStrong;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/text/TextDirectionHeuristics$AnyStrong;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroid/text/TextDirectionHeuristics$AnyStrong;->INSTANCE_RTL:Landroid/text/TextDirectionHeuristics$AnyStrong;

    .line 8
    .line 9
    new-instance v0, Landroid/text/TextDirectionHeuristics$AnyStrong;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1}, Landroid/text/TextDirectionHeuristics$AnyStrong;-><init>(Z)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroid/text/TextDirectionHeuristics$AnyStrong;->INSTANCE_LTR:Landroid/text/TextDirectionHeuristics$AnyStrong;

    .line 16
    .line 17
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Landroid/text/TextDirectionHeuristics$AnyStrong;->mLookForRtl:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public checkRtl(Ljava/lang/CharSequence;II)I
    .locals 6

    .line 1
    add-int/2addr p3, p2

    .line 2
    const/4 v0, 0x0

    .line 3
    move v1, v0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    if-ge p2, p3, :cond_6

    .line 6
    .line 7
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/16 v4, 0x2066

    .line 12
    .line 13
    if-gt v4, v3, :cond_0

    .line 14
    .line 15
    const/16 v4, 0x2068

    .line 16
    .line 17
    if-gt v3, v4, :cond_0

    .line 18
    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    const/16 v4, 0x2069

    .line 23
    .line 24
    if-ne v3, v4, :cond_1

    .line 25
    .line 26
    if-lez v2, :cond_5

    .line 27
    .line 28
    add-int/lit8 v2, v2, -0x1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    if-nez v2, :cond_5

    .line 32
    .line 33
    invoke-static {v3}, Landroid/text/TextDirectionHeuristics;->access$100(I)I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const/4 v5, 0x1

    .line 38
    if-eqz v4, :cond_3

    .line 39
    .line 40
    if-eq v4, v5, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    iget-boolean v1, p0, Landroid/text/TextDirectionHeuristics$AnyStrong;->mLookForRtl:Z

    .line 44
    .line 45
    if-nez v1, :cond_4

    .line 46
    .line 47
    return v5

    .line 48
    :cond_3
    iget-boolean v1, p0, Landroid/text/TextDirectionHeuristics$AnyStrong;->mLookForRtl:Z

    .line 49
    .line 50
    if-eqz v1, :cond_4

    .line 51
    .line 52
    return v0

    .line 53
    :cond_4
    move v1, v5

    .line 54
    :cond_5
    :goto_1
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    add-int/2addr p2, v3

    .line 59
    goto :goto_0

    .line 60
    :cond_6
    if-eqz v1, :cond_7

    .line 61
    .line 62
    iget-boolean p1, p0, Landroid/text/TextDirectionHeuristics$AnyStrong;->mLookForRtl:Z

    .line 63
    .line 64
    return p1

    .line 65
    :cond_7
    const/4 p1, 0x2

    .line 66
    return p1
.end method
