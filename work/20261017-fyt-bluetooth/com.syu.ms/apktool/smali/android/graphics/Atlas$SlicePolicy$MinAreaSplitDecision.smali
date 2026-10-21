.class Landroid/graphics/Atlas$SlicePolicy$MinAreaSplitDecision;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/Atlas$SlicePolicy$SplitDecision;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Atlas$SlicePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MinAreaSplitDecision"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/Atlas$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/graphics/Atlas$SlicePolicy$MinAreaSplitDecision;-><init>()V

    return-void
.end method


# virtual methods
.method public splitHorizontal(IIII)Z
    .locals 0

    mul-int/2addr p3, p2

    mul-int/2addr p1, p4

    if-le p3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
