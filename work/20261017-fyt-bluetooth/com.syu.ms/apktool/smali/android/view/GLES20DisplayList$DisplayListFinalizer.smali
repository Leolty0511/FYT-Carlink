.class Landroid/view/GLES20DisplayList$DisplayListFinalizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/GLES20DisplayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayListFinalizer"
.end annotation


# instance fields
.field public final mNativeDisplayList:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    iget v0, p0, Landroid/view/GLES20DisplayList$DisplayListFinalizer;->mNativeDisplayList:I

    invoke-static {v0}, Landroid/view/GLES20DisplayList;->access$000(I)V
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
