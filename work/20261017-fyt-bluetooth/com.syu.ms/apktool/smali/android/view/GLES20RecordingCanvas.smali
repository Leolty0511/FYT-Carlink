.class Landroid/view/GLES20RecordingCanvas;
.super Landroid/view/GLES20Canvas;
.source "SourceFile"


# static fields
.field private static final POOL_LIMIT:I = 0x19

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/view/GLES20RecordingCanvas;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDisplayList:Landroid/view/GLES20DisplayList;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/GLES20RecordingCanvas;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, v0}, Landroid/view/GLES20Canvas;-><init>(ZZ)V

    return-void
.end method

.method public static obtain(Landroid/view/GLES20DisplayList;)Landroid/view/GLES20RecordingCanvas;
    .locals 1

    .line 1
    sget-object v0, Landroid/view/GLES20RecordingCanvas;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/GLES20RecordingCanvas;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/view/GLES20RecordingCanvas;

    invoke-direct {v0}, Landroid/view/GLES20RecordingCanvas;-><init>()V

    .line 3
    :cond_0
    iput-object p0, v0, Landroid/view/GLES20RecordingCanvas;->mDisplayList:Landroid/view/GLES20DisplayList;

    return-object v0
.end method


# virtual methods
.method public drawDisplayList(Landroid/view/DisplayList;Landroid/graphics/Rect;I)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/GLES20Canvas;->drawDisplayList(Landroid/view/DisplayList;Landroid/graphics/Rect;I)I

    move-result p2

    .line 2
    iget-object p3, p0, Landroid/view/GLES20RecordingCanvas;->mDisplayList:Landroid/view/GLES20DisplayList;

    invoke-virtual {p3}, Landroid/view/GLES20DisplayList;->getChildDisplayLists()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return p2
.end method

.method public end(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/GLES20Canvas;->getDisplayList(I)I

    move-result p1

    return p1
.end method

.method public recycle()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroid/view/GLES20RecordingCanvas;->mDisplayList:Landroid/view/GLES20DisplayList;

    .line 2
    invoke-virtual {p0}, Landroid/view/GLES20Canvas;->resetDisplayListRenderer()V

    .line 3
    sget-object v0, Landroid/view/GLES20RecordingCanvas;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/GLES20RecordingCanvas;->mDisplayList:Landroid/view/GLES20DisplayList;

    invoke-virtual {v0}, Landroid/view/GLES20DisplayList;->clearReferences()V

    return-void
.end method
