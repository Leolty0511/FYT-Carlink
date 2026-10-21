.class Landroid/filterfw/GraphEnvironment$GraphHandle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterfw/GraphEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GraphHandle"
.end annotation


# instance fields
.field private mAsyncRunner:Landroid/filterfw/core/AsyncRunner;

.field private mGraph:Landroid/filterfw/core/FilterGraph;

.field private mSyncRunner:Landroid/filterfw/core/SyncRunner;

.field final synthetic this$0:Landroid/filterfw/GraphEnvironment;


# direct methods
.method public constructor <init>(Landroid/filterfw/GraphEnvironment;Landroid/filterfw/core/FilterGraph;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->this$0:Landroid/filterfw/GraphEnvironment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mGraph:Landroid/filterfw/core/FilterGraph;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getAsyncRunner(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/AsyncRunner;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mAsyncRunner:Landroid/filterfw/core/AsyncRunner;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/filterfw/core/AsyncRunner;

    .line 6
    .line 7
    const-class v1, Landroid/filterfw/core/RoundRobinScheduler;

    .line 8
    .line 9
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/AsyncRunner;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mAsyncRunner:Landroid/filterfw/core/AsyncRunner;

    .line 13
    .line 14
    iget-object p1, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mGraph:Landroid/filterfw/core/FilterGraph;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/filterfw/core/AsyncRunner;->setGraph(Landroid/filterfw/core/FilterGraph;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mAsyncRunner:Landroid/filterfw/core/AsyncRunner;

    .line 20
    .line 21
    return-object p1
.end method

.method public getGraph()Landroid/filterfw/core/FilterGraph;
    .locals 1

    iget-object v0, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mGraph:Landroid/filterfw/core/FilterGraph;

    return-object v0
.end method

.method public getSyncRunner(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/GraphRunner;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mSyncRunner:Landroid/filterfw/core/SyncRunner;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/filterfw/core/SyncRunner;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mGraph:Landroid/filterfw/core/FilterGraph;

    .line 8
    .line 9
    const-class v2, Landroid/filterfw/core/RoundRobinScheduler;

    .line 10
    .line 11
    invoke-direct {v0, p1, v1, v2}, Landroid/filterfw/core/SyncRunner;-><init>(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FilterGraph;Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mSyncRunner:Landroid/filterfw/core/SyncRunner;

    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Landroid/filterfw/GraphEnvironment$GraphHandle;->mSyncRunner:Landroid/filterfw/core/SyncRunner;

    .line 17
    .line 18
    return-object p1
.end method
