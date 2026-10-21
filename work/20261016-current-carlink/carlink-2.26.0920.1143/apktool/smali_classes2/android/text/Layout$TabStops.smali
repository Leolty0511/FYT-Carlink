.class Landroid/text/Layout$TabStops;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabStops"
.end annotation


# instance fields
.field private mIncrement:I

.field private mNumStops:I

.field private mStops:[I


# direct methods
.method public constructor <init>(I[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Landroid/text/Layout$TabStops;->reset(I[Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static nextDefaultStop(FI)F
    .locals 1

    int-to-float v0, p1

    add-float/2addr p0, v0

    div-float/2addr p0, v0

    float-to-int p0, p0

    mul-int/2addr p0, p1

    int-to-float p0, p0

    return p0
.end method


# virtual methods
.method public nextTab(F)F
    .locals 5

    .line 1
    iget v0, p0, Landroid/text/Layout$TabStops;->mNumStops:I

    .line 2
    .line 3
    if-lez v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Landroid/text/Layout$TabStops;->mStops:[I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v0, :cond_1

    .line 9
    .line 10
    aget v3, v1, v2

    .line 11
    .line 12
    int-to-float v3, v3

    .line 13
    cmpl-float v4, v3, p1

    .line 14
    .line 15
    if-lez v4, :cond_0

    .line 16
    .line 17
    return v3

    .line 18
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget v0, p0, Landroid/text/Layout$TabStops;->mIncrement:I

    .line 22
    .line 23
    invoke-static {p1, v0}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1
.end method

.method public reset(I[Ljava/lang/Object;)V
    .locals 8

    .line 1
    iput p1, p0, Landroid/text/Layout$TabStops;->mIncrement:I

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    if-eqz p2, :cond_7

    .line 5
    .line 6
    iget-object v0, p0, Landroid/text/Layout$TabStops;->mStops:[I

    .line 7
    .line 8
    array-length v1, p2

    .line 9
    move v2, p1

    .line 10
    move v3, v2

    .line 11
    :goto_0
    if-ge v2, v1, :cond_4

    .line 12
    .line 13
    aget-object v4, p2, v2

    .line 14
    .line 15
    instance-of v5, v4, Landroid/text/style/TabStopSpan;

    .line 16
    .line 17
    if-eqz v5, :cond_3

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const/16 v0, 0xa

    .line 22
    .line 23
    new-array v0, v0, [I

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_0
    array-length v5, v0

    .line 27
    if-ne v3, v5, :cond_2

    .line 28
    .line 29
    mul-int/lit8 v5, v3, 0x2

    .line 30
    .line 31
    new-array v5, v5, [I

    .line 32
    .line 33
    move v6, p1

    .line 34
    :goto_1
    if-ge v6, v3, :cond_1

    .line 35
    .line 36
    aget v7, v0, v6

    .line 37
    .line 38
    aput v7, v5, v6

    .line 39
    .line 40
    add-int/lit8 v6, v6, 0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move-object v0, v5

    .line 44
    :cond_2
    :goto_2
    add-int/lit8 v5, v3, 0x1

    .line 45
    .line 46
    check-cast v4, Landroid/text/style/TabStopSpan;

    .line 47
    .line 48
    invoke-interface {v4}, Landroid/text/style/TabStopSpan;->getTabStop()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    aput v4, v0, v3

    .line 53
    .line 54
    move v3, v5

    .line 55
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_4
    const/4 p2, 0x1

    .line 59
    if-le v3, p2, :cond_5

    .line 60
    .line 61
    invoke-static {v0, p1, v3}, Ljava/util/Arrays;->sort([III)V

    .line 62
    .line 63
    .line 64
    :cond_5
    iget-object p1, p0, Landroid/text/Layout$TabStops;->mStops:[I

    .line 65
    .line 66
    if-eq v0, p1, :cond_6

    .line 67
    .line 68
    iput-object v0, p0, Landroid/text/Layout$TabStops;->mStops:[I

    .line 69
    .line 70
    :cond_6
    move p1, v3

    .line 71
    :cond_7
    iput p1, p0, Landroid/text/Layout$TabStops;->mNumStops:I

    .line 72
    .line 73
    return-void
.end method
