.class public Landroid/graphics/Atlas;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Atlas$SlicePolicy;,
        Landroid/graphics/Atlas$Policy;,
        Landroid/graphics/Atlas$Entry;,
        Landroid/graphics/Atlas$Type;
    }
.end annotation


# static fields
.field public static final FLAG_ADD_PADDING:I = 0x2

.field public static final FLAG_ALLOW_ROTATIONS:I = 0x1

.field public static final FLAG_DEFAULTS:I = 0x2


# instance fields
.field private final mPolicy:Landroid/graphics/Atlas$Policy;


# direct methods
.method public constructor <init>(Landroid/graphics/Atlas$Type;II)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/graphics/Atlas;-><init>(Landroid/graphics/Atlas$Type;III)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Atlas$Type;III)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Atlas;->findPolicy(Landroid/graphics/Atlas$Type;III)Landroid/graphics/Atlas$Policy;

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/Atlas;->mPolicy:Landroid/graphics/Atlas$Policy;

    return-void
.end method

.method private static findPolicy(Landroid/graphics/Atlas$Type;III)Landroid/graphics/Atlas$Policy;
    .locals 2

    .line 1
    sget-object v0, Landroid/graphics/Atlas$1;->$SwitchMap$android$graphics$Atlas$Type:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance p0, Landroid/graphics/Atlas$SlicePolicy;

    new-instance v0, Landroid/graphics/Atlas$SlicePolicy$LongerFreeAxisSplitDecision;

    invoke-direct {v0, v1}, Landroid/graphics/Atlas$SlicePolicy$LongerFreeAxisSplitDecision;-><init>(Landroid/graphics/Atlas$1;)V

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/graphics/Atlas$SlicePolicy;-><init>(IIILandroid/graphics/Atlas$SlicePolicy$SplitDecision;)V

    return-object p0

    .line 3
    :cond_1
    new-instance p0, Landroid/graphics/Atlas$SlicePolicy;

    new-instance v0, Landroid/graphics/Atlas$SlicePolicy$ShorterFreeAxisSplitDecision;

    invoke-direct {v0, v1}, Landroid/graphics/Atlas$SlicePolicy$ShorterFreeAxisSplitDecision;-><init>(Landroid/graphics/Atlas$1;)V

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/graphics/Atlas$SlicePolicy;-><init>(IIILandroid/graphics/Atlas$SlicePolicy$SplitDecision;)V

    return-object p0

    .line 4
    :cond_2
    new-instance p0, Landroid/graphics/Atlas$SlicePolicy;

    new-instance v0, Landroid/graphics/Atlas$SlicePolicy$MaxAreaSplitDecision;

    invoke-direct {v0, v1}, Landroid/graphics/Atlas$SlicePolicy$MaxAreaSplitDecision;-><init>(Landroid/graphics/Atlas$1;)V

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/graphics/Atlas$SlicePolicy;-><init>(IIILandroid/graphics/Atlas$SlicePolicy$SplitDecision;)V

    return-object p0

    .line 5
    :cond_3
    new-instance p0, Landroid/graphics/Atlas$SlicePolicy;

    new-instance v0, Landroid/graphics/Atlas$SlicePolicy$MinAreaSplitDecision;

    invoke-direct {v0, v1}, Landroid/graphics/Atlas$SlicePolicy$MinAreaSplitDecision;-><init>(Landroid/graphics/Atlas$1;)V

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/graphics/Atlas$SlicePolicy;-><init>(IIILandroid/graphics/Atlas$SlicePolicy$SplitDecision;)V

    return-object p0
.end method


# virtual methods
.method public pack(II)Landroid/graphics/Atlas$Entry;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroid/graphics/Atlas;->pack(IILandroid/graphics/Atlas$Entry;)Landroid/graphics/Atlas$Entry;

    move-result-object p1

    return-object p1
.end method

.method public pack(IILandroid/graphics/Atlas$Entry;)Landroid/graphics/Atlas$Entry;
    .locals 1

    if-nez p3, :cond_0

    .line 2
    new-instance p3, Landroid/graphics/Atlas$Entry;

    invoke-direct {p3}, Landroid/graphics/Atlas$Entry;-><init>()V

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/graphics/Atlas;->mPolicy:Landroid/graphics/Atlas$Policy;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Atlas$Policy;->pack(IILandroid/graphics/Atlas$Entry;)Landroid/graphics/Atlas$Entry;

    move-result-object p1

    return-object p1
.end method
