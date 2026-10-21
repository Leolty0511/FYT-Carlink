.class final Landroid/view/ViewDebug$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewDebug;->invokeViewMethod(Landroid/view/View;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$exception:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$method:Ljava/lang/reflect/Method;

.field final synthetic val$result:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/reflect/Method;Landroid/view/View;[Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewDebug$9;->val$result:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Landroid/view/ViewDebug$9;->val$method:Ljava/lang/reflect/Method;

    iput-object p3, p0, Landroid/view/ViewDebug$9;->val$view:Landroid/view/View;

    iput-object p4, p0, Landroid/view/ViewDebug$9;->val$args:[Ljava/lang/Object;

    iput-object p5, p0, Landroid/view/ViewDebug$9;->val$exception:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p6, p0, Landroid/view/ViewDebug$9;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewDebug$9;->val$result:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/view/ViewDebug$9;->val$method:Ljava/lang/reflect/Method;

    .line 4
    .line 5
    iget-object v2, p0, Landroid/view/ViewDebug$9;->val$view:Landroid/view/View;

    .line 6
    .line 7
    iget-object v3, p0, Landroid/view/ViewDebug$9;->val$args:[Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    iget-object v1, p0, Landroid/view/ViewDebug$9;->val$exception:Ljava/util/concurrent/atomic/AtomicReference;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_1
    move-exception v0

    .line 25
    iget-object v1, p0, Landroid/view/ViewDebug$9;->val$exception:Ljava/util/concurrent/atomic/AtomicReference;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    iget-object v0, p0, Landroid/view/ViewDebug$9;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 37
    .line 38
    .line 39
    return-void
.end method
