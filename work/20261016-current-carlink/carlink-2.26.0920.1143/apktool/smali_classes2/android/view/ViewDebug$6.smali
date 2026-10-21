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
.field final synthetic val$cache:[Landroid/graphics/Bitmap;

.field final synthetic val$captureView:Landroid/view/View;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$skipChildren:Z


# direct methods
.method public constructor <init>([Landroid/graphics/Bitmap;Landroid/view/View;ZLjava/util/concurrent/CountDownLatch;)V
    .locals 0

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

    .line 2
    .line 3
    iget-object v1, p0, Landroid/view/ViewDebug$6;->val$captureView:Landroid/view/View;

    .line 4
    .line 5
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 6
    .line 7
    iget-boolean v3, p0, Landroid/view/ViewDebug$6;->val$skipChildren:Z

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-virtual {v1, v2, v4, v3}, Landroid/view/View;->createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    aput-object v1, v0, v4
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    goto :goto_1

    .line 19
    :catch_0
    :try_start_1
    const-string v0, "View"

    .line 20
    .line 21
    const-string v1, "Out of memory for bitmap"

    .line 22
    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    .line 26
    :goto_0
    iget-object v0, p0, Landroid/view/ViewDebug$6;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :goto_1
    iget-object v1, p0, Landroid/view/ViewDebug$6;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 35
    .line 36
    .line 37
    throw v0
.end method
