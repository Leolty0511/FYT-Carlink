.class final Landroid/view/ViewDebug$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewDebug;->performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$cache:[Landroid/graphics/Bitmap;

.field public final synthetic val$captureView:Landroid/view/View;

.field public final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic val$skipChildren:Z


# direct methods
.method public constructor <init>([Landroid/graphics/Bitmap;Landroid/view/View;ZLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/ViewDebug$6;->val$cache:[Landroid/graphics/Bitmap;

    iput-object p2, p0, Landroid/view/ViewDebug$6;->val$captureView:Landroid/view/View;

    iput-boolean p3, p0, Landroid/view/ViewDebug$6;->val$skipChildren:Z

    iput-object p4, p0, Landroid/view/ViewDebug$6;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewDebug$6;->val$cache:[Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid/view/ViewDebug$6;->val$captureView:Landroid/view/View;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iget-boolean v3, p0, Landroid/view/ViewDebug$6;->val$skipChildren:Z

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/View;->createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v4
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :try_start_1
    const-string v0, "View"

    const-string v1, "Out of memory for bitmap"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :goto_0
    iget-object v0, p0, Landroid/view/ViewDebug$6;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :goto_1
    iget-object v1, p0, Landroid/view/ViewDebug$6;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
