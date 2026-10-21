.class Landroid/view/GLES20Layer$Finalizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/GLES20Layer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Finalizer"
.end annotation


# instance fields
.field private mLayerId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/view/GLES20Layer$Finalizer;->mLayerId:I

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/GLES20Layer$Finalizer;->mLayerId:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->nDestroyLayer(I)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/view/GLES20Layer$Finalizer;->mLayerId:I

    return-void
.end method

.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    iget v0, p0, Landroid/view/GLES20Layer$Finalizer;->mLayerId:I

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroid/view/GLES20Canvas;->nDestroyLayerDeferred(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
