.class Landroid/text/TextDirectionHeuristics$FirstStrong;
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
    name = "FirstStrong"
.end annotation


# static fields
.field public static final INSTANCE:Landroid/text/TextDirectionHeuristics$FirstStrong;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/text/TextDirectionHeuristics$FirstStrong;

    invoke-direct {v0}, Landroid/text/TextDirectionHeuristics$FirstStrong;-><init>()V

    sput-object v0, Landroid/text/TextDirectionHeuristics$FirstStrong;->INSTANCE:Landroid/text/TextDirectionHeuristics$FirstStrong;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkRtl(Ljava/lang/CharSequence;II)I
    .locals 5

    .line 1
    add-int/2addr p3, p2

    .line 2
    const/4 v0, 0x2

    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v0

    .line 5
    :goto_0
    if-ge p2, p3, :cond_3

    .line 6
    .line 7
    if-ne v2, v0, :cond_3

    .line 8
    .line 9
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/16 v4, 0x2066

    .line 14
    .line 15
    if-gt v4, v3, :cond_0

    .line 16
    .line 17
    const/16 v4, 0x2068

    .line 18
    .line 19
    if-gt v3, v4, :cond_0

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/16 v4, 0x2069

    .line 25
    .line 26
    if-ne v3, v4, :cond_1

    .line 27
    .line 28
    if-lez v1, :cond_2

    .line 29
    .line 30
    add-int/lit8 v1, v1, -0x1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    if-nez v1, :cond_2

    .line 34
    .line 35
    invoke-static {v3}, Landroid/text/TextDirectionHeuristics;->access$100(I)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    :cond_2
    :goto_1
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    add-int/2addr p2, v3

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    return v2
.end method
