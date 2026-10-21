.class public Landroid/graphics/RegionIterator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mNativeIter:I


# direct methods
.method public constructor <init>(Landroid/graphics/Region;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Region;->ni()I

    move-result p1

    invoke-static {p1}, Landroid/graphics/RegionIterator;->nativeConstructor(I)I

    move-result p1

    iput p1, p0, Landroid/graphics/RegionIterator;->mNativeIter:I

    return-void
.end method

.method private static native nativeConstructor(I)I
.end method

.method private static native nativeDestructor(I)V
.end method

.method private static native nativeNext(ILandroid/graphics/Rect;)Z
.end method


# virtual methods
.method public finalize()V
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/RegionIterator;->mNativeIter:I

    invoke-static {v0}, Landroid/graphics/RegionIterator;->nativeDestructor(I)V

    return-void
.end method

.method public final next(Landroid/graphics/Rect;)Z
    .locals 1

    const-string v0, "The Rect must be provided"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Landroid/graphics/RegionIterator;->mNativeIter:I

    invoke-static {v0, p1}, Landroid/graphics/RegionIterator;->nativeNext(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method
