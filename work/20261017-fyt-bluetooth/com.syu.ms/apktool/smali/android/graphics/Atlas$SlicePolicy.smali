.class Landroid/graphics/Atlas$SlicePolicy;
.super Landroid/graphics/Atlas$Policy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Atlas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SlicePolicy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Atlas$SlicePolicy$LongerFreeAxisSplitDecision;,
        Landroid/graphics/Atlas$SlicePolicy$ShorterFreeAxisSplitDecision;,
        Landroid/graphics/Atlas$SlicePolicy$MaxAreaSplitDecision;,
        Landroid/graphics/Atlas$SlicePolicy$MinAreaSplitDecision;,
        Landroid/graphics/Atlas$SlicePolicy$SplitDecision;,
        Landroid/graphics/Atlas$SlicePolicy$Cell;
    }
.end annotation


# instance fields
.field private final mAllowRotation:Z

.field private final mPadding:I

.field private final mRoot:Landroid/graphics/Atlas$SlicePolicy$Cell;

.field private final mSplitDecision:Landroid/graphics/Atlas$SlicePolicy$SplitDecision;


# direct methods
.method public constructor <init>(IIILandroid/graphics/Atlas$SlicePolicy$SplitDecision;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroid/graphics/Atlas$Policy;-><init>(Landroid/graphics/Atlas$1;)V

    .line 2
    new-instance v1, Landroid/graphics/Atlas$SlicePolicy$Cell;

    invoke-direct {v1, v0}, Landroid/graphics/Atlas$SlicePolicy$Cell;-><init>(Landroid/graphics/Atlas$1;)V

    iput-object v1, p0, Landroid/graphics/Atlas$SlicePolicy;->mRoot:Landroid/graphics/Atlas$SlicePolicy$Cell;

    and-int/lit8 v2, p3, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 3
    :goto_0
    iput-boolean v2, p0, Landroid/graphics/Atlas$SlicePolicy;->mAllowRotation:Z

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move v3, v4

    .line 4
    :cond_1
    iput v3, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    .line 5
    new-instance p3, Landroid/graphics/Atlas$SlicePolicy$Cell;

    invoke-direct {p3, v0}, Landroid/graphics/Atlas$SlicePolicy$Cell;-><init>(Landroid/graphics/Atlas$1;)V

    .line 6
    iput v3, p3, Landroid/graphics/Atlas$SlicePolicy$Cell;->y:I

    iput v3, p3, Landroid/graphics/Atlas$SlicePolicy$Cell;->x:I

    mul-int/lit8 v0, v3, 0x2

    sub-int/2addr p1, v0

    .line 7
    iput p1, p3, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr p2, v3

    .line 8
    iput p2, p3, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    .line 9
    iput-object p3, v1, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    .line 10
    iput-object p4, p0, Landroid/graphics/Atlas$SlicePolicy;->mSplitDecision:Landroid/graphics/Atlas$SlicePolicy$SplitDecision;

    return-void
.end method

.method private insert(Landroid/graphics/Atlas$SlicePolicy$Cell;Landroid/graphics/Atlas$SlicePolicy$Cell;IILandroid/graphics/Atlas$Entry;)Z
    .locals 10

    .line 1
    iget v0, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt v0, p3, :cond_0

    iget v3, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    if-ge v3, p4, :cond_2

    .line 2
    :cond_0
    iget-boolean v3, p0, Landroid/graphics/Atlas$SlicePolicy;->mAllowRotation:Z

    if-eqz v3, :cond_6

    if-lt v0, p4, :cond_6

    .line 3
    iget v3, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    if-ge v3, p3, :cond_1

    goto/16 :goto_2

    :cond_1
    move v2, v1

    move v9, p4

    move p4, p3

    move p3, v9

    :cond_2
    sub-int/2addr v0, p3

    .line 4
    iget v3, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    sub-int/2addr v3, p4

    .line 5
    new-instance v4, Landroid/graphics/Atlas$SlicePolicy$Cell;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/graphics/Atlas$SlicePolicy$Cell;-><init>(Landroid/graphics/Atlas$1;)V

    .line 6
    new-instance v6, Landroid/graphics/Atlas$SlicePolicy$Cell;

    invoke-direct {v6, v5}, Landroid/graphics/Atlas$SlicePolicy$Cell;-><init>(Landroid/graphics/Atlas$1;)V

    .line 7
    iget v7, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->x:I

    add-int/2addr v7, p3

    iget v8, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    add-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Atlas$SlicePolicy$Cell;->x:I

    .line 8
    iget v7, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->y:I

    iput v7, v4, Landroid/graphics/Atlas$SlicePolicy$Cell;->y:I

    sub-int v7, v0, v8

    .line 9
    iput v7, v4, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    .line 10
    iget v7, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->x:I

    iput v7, v6, Landroid/graphics/Atlas$SlicePolicy$Cell;->x:I

    .line 11
    iget v7, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->y:I

    add-int/2addr v7, p4

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Atlas$SlicePolicy$Cell;->y:I

    sub-int v7, v3, v8

    .line 12
    iput v7, v6, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    .line 13
    iget-object v7, p0, Landroid/graphics/Atlas$SlicePolicy;->mSplitDecision:Landroid/graphics/Atlas$SlicePolicy$SplitDecision;

    invoke-interface {v7, v0, v3, p3, p4}, Landroid/graphics/Atlas$SlicePolicy$SplitDecision;->splitHorizontal(IIII)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    iput p4, v4, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    .line 15
    iget p3, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    iput p3, v6, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    goto :goto_0

    .line 16
    :cond_3
    iget p4, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    iput p4, v4, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    .line 17
    iput p3, v6, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    move-object v9, v6

    move-object v6, v4

    move-object v4, v9

    .line 18
    :goto_0
    iget p3, v4, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    if-lez p3, :cond_4

    iget p3, v4, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    if-lez p3, :cond_4

    .line 19
    iput-object v4, p2, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    move-object p2, v4

    .line 20
    :cond_4
    iget p3, v6, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    if-lez p3, :cond_5

    iget p3, v6, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    if-lez p3, :cond_5

    .line 21
    iput-object v6, p2, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    .line 22
    iget-object p2, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    iput-object p2, v6, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    goto :goto_1

    .line 23
    :cond_5
    iget-object p3, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    iput-object p3, p2, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    .line 24
    :goto_1
    iput-object v5, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    .line 25
    iget p2, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->x:I

    iput p2, p5, Landroid/graphics/Atlas$Entry;->x:I

    .line 26
    iget p1, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->y:I

    iput p1, p5, Landroid/graphics/Atlas$Entry;->y:I

    .line 27
    iput-boolean v2, p5, Landroid/graphics/Atlas$Entry;->rotated:Z

    return v1

    :cond_6
    :goto_2
    return v2
.end method


# virtual methods
.method public pack(IILandroid/graphics/Atlas$Entry;)Landroid/graphics/Atlas$Entry;
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/graphics/Atlas$SlicePolicy;->mRoot:Landroid/graphics/Atlas$SlicePolicy$Cell;

    iget-object v1, v0, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    :goto_0
    move-object v4, v0

    move-object v0, v1

    if-eqz v0, :cond_1

    move-object v2, p0

    move-object v3, v0

    move v5, p1

    move v6, p2

    move-object v7, p3

    .line 2
    invoke-direct/range {v2 .. v7}, Landroid/graphics/Atlas$SlicePolicy;->insert(Landroid/graphics/Atlas$SlicePolicy$Cell;Landroid/graphics/Atlas$SlicePolicy$Cell;IILandroid/graphics/Atlas$Entry;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p3

    .line 3
    :cond_0
    iget-object v1, v0, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
