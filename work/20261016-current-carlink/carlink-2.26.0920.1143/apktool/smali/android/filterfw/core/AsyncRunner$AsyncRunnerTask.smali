.class Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterfw/core/AsyncRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsyncRunnerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/filterfw/core/SyncRunner;",
        "Ljava/lang/Void;",
        "Landroid/filterfw/core/AsyncRunner$RunnerResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AsyncRunnerTask"


# instance fields
.field final synthetic this$0:Landroid/filterfw/core/AsyncRunner;


# direct methods
.method private constructor <init>(Landroid/filterfw/core/AsyncRunner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/filterfw/core/AsyncRunner;Landroid/filterfw/core/AsyncRunner$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;-><init>(Landroid/filterfw/core/AsyncRunner;)V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Landroid/filterfw/core/SyncRunner;)Landroid/filterfw/core/AsyncRunner$RunnerResult;
    .locals 7

    const-string v0, "AsyncRunnerTask"

    .line 2
    new-instance v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;

    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/filterfw/core/AsyncRunner$RunnerResult;-><init>(Landroid/filterfw/core/AsyncRunner;Landroid/filterfw/core/AsyncRunner$1;)V

    const/4 v2, 0x6

    .line 3
    :try_start_0
    array-length v3, p1

    const/4 v4, 0x1

    if-gt v3, v4, :cond_5

    const/4 v3, 0x0

    .line 4
    aget-object v5, p1, v3

    invoke-virtual {v5}, Landroid/filterfw/core/SyncRunner;->assertReadyToStep()V

    .line 5
    iget-object v5, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v5}, Landroid/filterfw/core/AsyncRunner;->access$100(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Starting background graph processing."

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    iget-object v5, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-virtual {v5}, Landroid/filterfw/core/GraphRunner;->activateGlContext()Z

    .line 7
    iget-object v5, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v5}, Landroid/filterfw/core/AsyncRunner;->access$100(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "Preparing filter graph for processing."

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_1
    aget-object v5, p1, v3

    invoke-virtual {v5}, Landroid/filterfw/core/SyncRunner;->beginProcessing()V

    .line 9
    iget-object v5, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v5}, Landroid/filterfw/core/AsyncRunner;->access$100(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "Running graph."

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_2
    iput v4, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    .line 11
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_4

    iget v5, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    if-ne v5, v4, :cond_4

    .line 12
    aget-object v5, p1, v3

    invoke-virtual {v5}, Landroid/filterfw/core/SyncRunner;->performStep()Z

    move-result v5

    if-nez v5, :cond_3

    .line 13
    aget-object v5, p1, v3

    invoke-virtual {v5}, Landroid/filterfw/core/SyncRunner;->determinePostRunState()I

    move-result v5

    iput v5, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 14
    aget-object v5, p1, v3

    invoke-virtual {v5}, Landroid/filterfw/core/SyncRunner;->waitUntilWake()V

    .line 15
    iput v4, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    goto :goto_0

    .line 16
    :cond_4
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x5

    .line 17
    iput p1, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    goto :goto_1

    .line 18
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v3, "More than one runner received!"

    invoke-direct {p1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 19
    iput-object p1, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->exception:Ljava/lang/Exception;

    .line 20
    iput v2, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    .line 21
    :cond_6
    :goto_1
    :try_start_1
    iget-object p1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-virtual {p1}, Landroid/filterfw/core/GraphRunner;->deactivateGlContext()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 22
    iput-object p1, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->exception:Ljava/lang/Exception;

    .line 23
    iput v2, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    .line 24
    :goto_2
    iget-object p1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {p1}, Landroid/filterfw/core/AsyncRunner;->access$100(Landroid/filterfw/core/AsyncRunner;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "Done with background graph processing."

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-object v1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Landroid/filterfw/core/SyncRunner;

    invoke-virtual {p0, p1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->doInBackground([Landroid/filterfw/core/SyncRunner;)Landroid/filterfw/core/AsyncRunner$RunnerResult;

    move-result-object p1

    return-object p1
.end method

.method public onCancelled(Landroid/filterfw/core/AsyncRunner$RunnerResult;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->onPostExecute(Landroid/filterfw/core/AsyncRunner$RunnerResult;)V

    return-void
.end method

.method public bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;

    invoke-virtual {p0, p1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->onCancelled(Landroid/filterfw/core/AsyncRunner$RunnerResult;)V

    return-void
.end method

.method public onPostExecute(Landroid/filterfw/core/AsyncRunner$RunnerResult;)V
    .locals 4

    .line 2
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v0}, Landroid/filterfw/core/AsyncRunner;->access$100(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v0

    const-string v1, "AsyncRunnerTask"

    if-eqz v0, :cond_0

    const-string v0, "Starting post-execute."

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/filterfw/core/AsyncRunner;->access$200(Landroid/filterfw/core/AsyncRunner;Z)V

    const/4 v0, 0x5

    if-nez p1, :cond_1

    .line 4
    new-instance p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;

    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    const/4 v3, 0x0

    invoke-direct {p1, v2, v3}, Landroid/filterfw/core/AsyncRunner$RunnerResult;-><init>(Landroid/filterfw/core/AsyncRunner;Landroid/filterfw/core/AsyncRunner$1;)V

    .line 5
    iput v0, p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    .line 6
    :cond_1
    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    iget-object v3, p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->exception:Ljava/lang/Exception;

    invoke-static {v2, v3}, Landroid/filterfw/core/AsyncRunner;->access$300(Landroid/filterfw/core/AsyncRunner;Ljava/lang/Exception;)V

    .line 7
    iget v2, p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    const/4 v3, 0x6

    if-eq v2, v0, :cond_2

    if-ne v2, v3, :cond_4

    .line 8
    :cond_2
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v0}, Landroid/filterfw/core/AsyncRunner;->access$100(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Closing filters."

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_3
    :try_start_0
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v0}, Landroid/filterfw/core/AsyncRunner;->access$400(Landroid/filterfw/core/AsyncRunner;)Landroid/filterfw/core/SyncRunner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/SyncRunner;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    iput v3, p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    .line 11
    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v2, v0}, Landroid/filterfw/core/AsyncRunner;->access$300(Landroid/filterfw/core/AsyncRunner;Ljava/lang/Exception;)V

    .line 12
    :cond_4
    :goto_0
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v0}, Landroid/filterfw/core/AsyncRunner;->access$500(Landroid/filterfw/core/AsyncRunner;)Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 13
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v0}, Landroid/filterfw/core/AsyncRunner;->access$100(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Calling graph done callback."

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_5
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v0}, Landroid/filterfw/core/AsyncRunner;->access$500(Landroid/filterfw/core/AsyncRunner;)Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    move-result-object v0

    iget p1, p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    invoke-interface {v0, p1}, Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;->onRunnerDone(I)V

    .line 15
    :cond_6
    iget-object p1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {p1}, Landroid/filterfw/core/AsyncRunner;->access$100(Landroid/filterfw/core/AsyncRunner;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "Completed post-execute."

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;

    invoke-virtual {p0, p1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->onPostExecute(Landroid/filterfw/core/AsyncRunner$RunnerResult;)V

    return-void
.end method
