.class final Landroid/graphics/Canvas$CanvasFinalizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CanvasFinalizer"
.end annotation


# instance fields
.field private mNativeCanvas:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/graphics/Canvas$CanvasFinalizer;->mNativeCanvas:I

    return-void
.end method

.method public static synthetic access$102(Landroid/graphics/Canvas$CanvasFinalizer;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/graphics/Canvas$CanvasFinalizer;->mNativeCanvas:I

    return p1
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Canvas$CanvasFinalizer;->mNativeCanvas:I

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroid/graphics/Canvas;->access$000(I)V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroid/graphics/Canvas$CanvasFinalizer;->mNativeCanvas:I

    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Canvas$CanvasFinalizer;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
