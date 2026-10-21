.class abstract Landroid/accounts/AccountManager$BaseFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "BaseFutureTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/AccountManager$BaseFutureTask$Response;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final mHandler:Landroid/os/Handler;

.field public final mResponse:Landroid/accounts/IAccountManagerResponse;

.field final synthetic this$0:Landroid/accounts/AccountManager;


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManager;Landroid/os/Handler;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/accounts/AccountManager$BaseFutureTask;->this$0:Landroid/accounts/AccountManager;

    .line 2
    .line 3
    new-instance v0, Landroid/accounts/AccountManager$BaseFutureTask$1;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Landroid/accounts/AccountManager$BaseFutureTask$1;-><init>(Landroid/accounts/AccountManager;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Landroid/accounts/AccountManager$BaseFutureTask;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    new-instance p1, Landroid/accounts/AccountManager$BaseFutureTask$Response;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Landroid/accounts/AccountManager$BaseFutureTask$Response;-><init>(Landroid/accounts/AccountManager$BaseFutureTask;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Landroid/accounts/AccountManager$BaseFutureTask;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic access$1000(Landroid/accounts/AccountManager$BaseFutureTask;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/FutureTask;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$1100(Landroid/accounts/AccountManager$BaseFutureTask;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public abstract bundleToResult(Landroid/os/Bundle;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract doWork()V
.end method

.method public postRunnableToHandler(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/accounts/AccountManager$BaseFutureTask;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/accounts/AccountManager$BaseFutureTask;->this$0:Landroid/accounts/AccountManager;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/accounts/AccountManager;->access$900(Landroid/accounts/AccountManager;)Landroid/os/Handler;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public startTask()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/accounts/AccountManager$BaseFutureTask;->doWork()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {p0, v0}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    .line 7
    .line 8
    .line 9
    :goto_0
    return-void
.end method
