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
    invoke-virtual {p0, p1, p2}, Landroid/text/Layout$TabStops;->reset(I[Ljava/lang/Object;)V

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

    if-lez v0, :cond_1

    .line 2
    iget-object v1, p0, Landroid/text/Layout$TabStops;->mStops:[I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3
    aget v3, v1, v2

    int-to-float v3, v3

    cmpl-float v4, v3, p1

    if-lez v4, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget v0, p0, Landroid/text/Layout$TabStops;->mIncrement:I

    invoke-static {p1, v0}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result p1

    return p1
.end method

.method public reset(I[Ljava/lang/Object;)V
    .locals 8

    .line 1
    iput p1, p0, Landroid/text/Layout$TabStops;->mIncrement:I

    const/4 p1, 0x0

    if-eqz p2, :cond_7

    .line 2
    iget-object v0, p0, Landroid/text/Layout$TabStops;->mStops:[I

    .line 3
    array-length v1, p2

    move v2, p1

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v4, p2, v2

    .line 4
    instance-of v5, v4, Landroid/text/style/TabStopSpan;

    if-eqz v5, :cond_3

    if-nez v0, :cond_0

    const/16 v0, 0xa

    new-array v0, v0, [I

    goto :goto_2

    .line 5
    :cond_0
    array-length v5, v0

    if-ne v3, v5, :cond_2

    mul-int/lit8 v5, v3, 0x2

    .line 6
    new-array v5, v5, [I

    move v6, p1

    :goto_1
    if-ge v6, v3, :cond_1

    .line 7
    aget v7, v0, v6

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v5

    :cond_2
    :goto_2
    add-int/lit8 v5, v3, 0x1

    .line 8
    check-cast v4, Landroid/text/style/TabStopSpan;

    invoke-interface {v4}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v4

    aput v4, v0, v3

    move v3, v5

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 p2, 0x1

    if-le v3, p2, :cond_5

    .line 9
    invoke-static {v0, p1, v3}, Ljava/util/Arrays;->sort([III)V

    .line 10
    :cond_5
    iget-object p1, p0, Landroid/text/Layout$TabStops;->mStops:[I

    if-eq v0, p1, :cond_6

    .line 11
    iput-object v0, p0, Landroid/text/Layout$TabStops;->mStops:[I

    :cond_6
    move p1, v3

    .line 12
    :cond_7
    iput p1, p0, Landroid/text/Layout$TabStops;->mNumStops:I

    return-void
.end method
