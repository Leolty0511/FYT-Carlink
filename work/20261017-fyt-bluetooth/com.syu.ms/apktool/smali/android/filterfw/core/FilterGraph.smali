.class public Landroid/filterfw/core/FilterGraph;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUTOBRANCH_OFF:I = 0x0

.field public static final AUTOBRANCH_SYNCED:I = 0x1

.field public static final AUTOBRANCH_UNSYNCED:I = 0x2

.field public static final TYPECHECK_DYNAMIC:I = 0x1

.field public static final TYPECHECK_OFF:I = 0x0

.field public static final TYPECHECK_STRICT:I = 0x2


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAutoBranchMode:I

.field private mDiscardUnconnectedOutputs:Z

.field private mFilters:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/filterfw/core/Filter;",
            ">;"
        }
    .end annotation
.end field

.field private mIsReady:Z

.field private mLogVerbose:Z

.field private mNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/filterfw/core/Filter;",
            ">;"
        }
    .end annotation
.end field

.field private mPreconnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/filterfw/core/OutputPort;",
            "Ljava/util/LinkedList<",
            "Landroid/filterfw/core/InputPort;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTypeCheckMode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/FilterGraph;->mFilters:Ljava/util/HashSet;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/FilterGraph;->mNameMap:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/FilterGraph;->mPreconnections:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/filterfw/core/FilterGraph;->mIsReady:Z

    .line 6
    iput v0, p0, Landroid/filterfw/core/FilterGraph;->mAutoBranchMode:I

    const/4 v1, 0x2

    .line 7
    iput v1, p0, Landroid/filterfw/core/FilterGraph;->mTypeCheckMode:I

    .line 8
    iput-boolean v0, p0, Landroid/filterfw/core/FilterGraph;->mDiscardUnconnectedOutputs:Z

    const-string v0, "FilterGraph"

    .line 9
    iput-object v0, p0, Landroid/filterfw/core/FilterGraph;->TAG:Ljava/lang/String;

    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/filterfw/core/FilterGraph;->mLogVerbose:Z

    return-void
.end method

.method private checkConnections()V
    .locals 0

    return-void
.end method

.method private connectPorts()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/FilterGraph;->mPreconnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/filterfw/core/OutputPort;

    .line 3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    .line 4
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/4 v6, 0x0

    if-ne v5, v1, :cond_0

    .line 5
    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/filterfw/core/InputPort;

    invoke-virtual {v4, v3}, Landroid/filterfw/core/OutputPort;->connectTo(Landroid/filterfw/core/InputPort;)V

    goto :goto_0

    .line 6
    :cond_0
    iget v5, p0, Landroid/filterfw/core/FilterGraph;->mAutoBranchMode:I

    if-eqz v5, :cond_4

    .line 7
    iget-boolean v5, p0, Landroid/filterfw/core/FilterGraph;->mLogVerbose:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/filterfw/core/FilterGraph;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Creating branch for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_1
    iget v5, p0, Landroid/filterfw/core/FilterGraph;->mAutoBranchMode:I

    if-ne v5, v1, :cond_3

    .line 9
    new-instance v5, Landroid/filterpacks/base/FrameBranch;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "branch"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Landroid/filterpacks/base/FrameBranch;-><init>(Ljava/lang/String;)V

    .line 10
    new-instance v2, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v2}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v7, "outputs"

    aput-object v7, v2, v6

    .line 11
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-virtual {v5, v2}, Landroid/filterfw/core/Filter;->initWithAssignmentList([Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p0, v5}, Landroid/filterfw/core/FilterGraph;->addFilter(Landroid/filterfw/core/Filter;)Z

    const-string v2, "in"

    .line 13
    invoke-virtual {v5, v2}, Landroid/filterfw/core/Filter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/filterfw/core/OutputPort;->connectTo(Landroid/filterfw/core/InputPort;)V

    .line 14
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 15
    invoke-virtual {v5}, Landroid/filterfw/core/Filter;->getOutputPorts()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/filterfw/core/OutputPort;

    .line 16
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/filterfw/core/InputPort;

    invoke-virtual {v4, v5}, Landroid/filterfw/core/OutputPort;->connectTo(Landroid/filterfw/core/InputPort;)V

    goto :goto_1

    :cond_2
    move v2, v8

    goto/16 :goto_0

    .line 17
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "TODO: Unsynced branches not implemented yet!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to connect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to multiple "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "filter ports! Enable auto-branching to allow this."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_5
    iget-object v0, p0, Landroid/filterfw/core/FilterGraph;->mPreconnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private discardUnconnectedOutputs()V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    iget-object v1, p0, Landroid/filterfw/core/FilterGraph;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/filterfw/core/Filter;

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v2}, Landroid/filterfw/core/Filter;->getOutputPorts()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/filterfw/core/OutputPort;

    .line 4
    invoke-virtual {v5}, Landroid/filterfw/core/OutputPort;->isConnected()Z

    move-result v6

    if-nez v6, :cond_1

    .line 5
    iget-boolean v6, p0, Landroid/filterfw/core/FilterGraph;->mLogVerbose:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/filterfw/core/FilterGraph;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Autoconnecting unconnected "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " to Null filter."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_2
    new-instance v6, Landroid/filterpacks/base/NullFilter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/filterfw/core/Filter;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "ToNull"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/filterpacks/base/NullFilter;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v6}, Landroid/filterfw/core/Filter;->init()V

    .line 8
    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v7, "frame"

    .line 9
    invoke-virtual {v6, v7}, Landroid/filterfw/core/Filter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/filterfw/core/OutputPort;->connectTo(Landroid/filterfw/core/InputPort;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/Filter;

    .line 11
    invoke-virtual {p0, v1}, Landroid/filterfw/core/FilterGraph;->addFilter(Landroid/filterfw/core/Filter;)Z

    goto :goto_1

    :cond_4
    return-void
.end method

.method private getSourceFilters()Ljava/util/HashSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Landroid/filterfw/core/Filter;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/filterfw/core/FilterGraph;->getFilters()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/filterfw/core/Filter;

    .line 3
    invoke-virtual {v2}, Landroid/filterfw/core/Filter;->getNumberOfConnectedInputs()I

    move-result v3

    if-nez v3, :cond_0

    .line 4
    iget-boolean v3, p0, Landroid/filterfw/core/FilterGraph;->mLogVerbose:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/filterfw/core/FilterGraph;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found source filter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private preconnect(Landroid/filterfw/core/OutputPort;Landroid/filterfw/core/InputPort;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/FilterGraph;->mPreconnections:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 3
    iget-object v1, p0, Landroid/filterfw/core/FilterGraph;->mPreconnections:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private readyForProcessing(Landroid/filterfw/core/Filter;Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/filterfw/core/Filter;",
            "Ljava/util/Set<",
            "Landroid/filterfw/core/Filter;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/filterfw/core/Filter;->getInputPorts()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/InputPort;

    .line 3
    invoke-virtual {v0}, Landroid/filterfw/core/InputPort;->getSourceFilter()Landroid/filterfw/core/Filter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private removeFilter(Landroid/filterfw/core/Filter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/FilterGraph;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Landroid/filterfw/core/FilterGraph;->mNameMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/filterfw/core/Filter;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private runTypeCheck()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3
    invoke-direct {p0}, Landroid/filterfw/core/FilterGraph;->getSourceFilters()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 5
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/filterfw/core/Filter;

    .line 6
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-direct {p0, v2}, Landroid/filterfw/core/FilterGraph;->updateOutputs(Landroid/filterfw/core/Filter;)V

    .line 8
    iget-boolean v3, p0, Landroid/filterfw/core/FilterGraph;->mLogVerbose:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/filterfw/core/FilterGraph;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Running type check on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_1
    invoke-direct {p0, v2}, Landroid/filterfw/core/FilterGraph;->runTypeCheckOn(Landroid/filterfw/core/Filter;)V

    .line 10
    invoke-virtual {v2}, Landroid/filterfw/core/Filter;->getOutputPorts()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/filterfw/core/OutputPort;

    .line 11
    invoke-virtual {v3}, Landroid/filterfw/core/OutputPort;->getTargetFilter()Landroid/filterfw/core/Filter;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 12
    invoke-direct {p0, v3, v1}, Landroid/filterfw/core/FilterGraph;->readyForProcessing(Landroid/filterfw/core/Filter;Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 13
    invoke-virtual {v0, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_3
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p0}, Landroid/filterfw/core/FilterGraph;->getFilters()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v0, v1, :cond_4

    return-void

    .line 15
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not schedule all filters! Is your graph malformed?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private runTypeCheckOn(Landroid/filterfw/core/Filter;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/filterfw/core/Filter;->getInputPorts()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/InputPort;

    .line 2
    iget-boolean v2, p0, Landroid/filterfw/core/FilterGraph;->mLogVerbose:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/filterfw/core/FilterGraph;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Type checking port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_1
    invoke-virtual {v1}, Landroid/filterfw/core/InputPort;->getSourceFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Landroid/filterfw/core/FilterPort;->getPortFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 5
    iget-boolean v4, p0, Landroid/filterfw/core/FilterGraph;->mLogVerbose:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/filterfw/core/FilterGraph;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Checking "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " against "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_2
    iget v4, p0, Landroid/filterfw/core/FilterGraph;->mTypeCheckMode:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_5

    if-eq v4, v6, :cond_4

    const/4 v7, 0x2

    if-eq v4, v7, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    invoke-virtual {v2, v3}, Landroid/filterfw/core/FrameFormat;->isCompatibleWith(Landroid/filterfw/core/FrameFormat;)Z

    move-result v6

    .line 8
    invoke-virtual {v1, v5}, Landroid/filterfw/core/FilterPort;->setChecksType(Z)V

    goto :goto_1

    .line 9
    :cond_4
    invoke-virtual {v2, v3}, Landroid/filterfw/core/FrameFormat;->mayBeCompatibleWith(Landroid/filterfw/core/FrameFormat;)Z

    move-result v4

    .line 10
    invoke-virtual {v1, v6}, Landroid/filterfw/core/FilterPort;->setChecksType(Z)V

    move v6, v4

    goto :goto_1

    .line 11
    :cond_5
    invoke-virtual {v1, v5}, Landroid/filterfw/core/FilterPort;->setChecksType(Z)V

    :goto_1
    if-eqz v6, :cond_6

    goto :goto_0

    .line 12
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Type mismatch: Filter "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " expects a "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "format of type "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " but got a format of type "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    return-void
.end method

.method private updateOutputs(Landroid/filterfw/core/Filter;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/filterfw/core/Filter;->getOutputPorts()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/OutputPort;

    .line 2
    invoke-virtual {v1}, Landroid/filterfw/core/OutputPort;->getBasePort()Landroid/filterfw/core/InputPort;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Landroid/filterfw/core/InputPort;->getSourceFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Landroid/filterfw/core/FilterPort;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Landroid/filterfw/core/Filter;->getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v1, v2}, Landroid/filterfw/core/FilterPort;->setPortFormat(Landroid/filterfw/core/FrameFormat;)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter did not return an output format for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method


# virtual methods
.method public addFilter(Landroid/filterfw/core/Filter;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/filterfw/core/FilterGraph;->containsFilter(Landroid/filterfw/core/Filter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/filterfw/core/FilterGraph;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Landroid/filterfw/core/FilterGraph;->mNameMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/filterfw/core/Filter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public beginProcessing()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/filterfw/core/FilterGraph;->mLogVerbose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/filterfw/core/FilterGraph;->TAG:Ljava/lang/String;

    const-string v1, "Opening all filter connections..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/filterfw/core/FilterGraph;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/Filter;

    .line 3
    invoke-virtual {v1}, Landroid/filterfw/core/Filter;->openOutputs()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroid/filterfw/core/FilterGraph;->mIsReady:Z

    return-void
.end method

.method public closeFilters(Landroid/filterfw/core/FilterContext;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/filterfw/core/FilterGraph;->mLogVerbose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/filterfw/core/FilterGraph;->TAG:Ljava/lang/String;

    const-string v1, "Closing all filters..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/filterfw/core/FilterGraph;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/Filter;

    .line 3
    invoke-virtual {v1, p1}, Landroid/filterfw/core/Filter;->performClose(Landroid/filterfw/core/FilterContext;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Landroid/filterfw/core/FilterGraph;->mIsReady:Z

    return-void
.end method

.method public connect(Landroid/filterfw/core/Filter;Ljava/lang/String;Landroid/filterfw/core/Filter;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 1
    invoke-virtual {p0, p1}, Landroid/filterfw/core/FilterGraph;->containsFilter(Landroid/filterfw/core/Filter;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p3}, Landroid/filterfw/core/FilterGraph;->containsFilter(Landroid/filterfw/core/Filter;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1, p2}, Landroid/filterfw/core/Filter;->getOutputPort(Ljava/lang/String;)Landroid/filterfw/core/OutputPort;

    move-result-object v0

    .line 3
    invoke-virtual {p3, p4}, Landroid/filterfw/core/Filter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    move-result-object v1

    const-string v2, "!"

    const-string v3, "\' on Filter "

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    .line 4
    invoke-direct {p0, v0, v1}, Landroid/filterfw/core/FilterGraph;->preconnect(Landroid/filterfw/core/OutputPort;Landroid/filterfw/core/InputPort;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown input port \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p3, Ljava/lang/RuntimeException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown output port \'"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Attempting to connect filter not in graph!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Passing null Filter in connect()!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 9
    invoke-virtual {p0, p1}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v0

    .line 10
    invoke-virtual {p0, p3}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v1

    const-string v2, "\'!"

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {p0, v0, p2, v1, p4}, Landroid/filterfw/core/FilterGraph;->connect(Landroid/filterfw/core/Filter;Ljava/lang/String;Landroid/filterfw/core/Filter;Ljava/lang/String;)V

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Attempting to connect unknown target filter \'"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Attempting to connect unknown source filter \'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public containsFilter(Landroid/filterfw/core/Filter;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/FilterGraph;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public flushFrames()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/FilterGraph;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/Filter;

    .line 2
    invoke-virtual {v1}, Landroid/filterfw/core/Filter;->clearOutputs()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/FilterGraph;->mNameMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/filterfw/core/Filter;

    return-object p1
.end method

.method public getFilters()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/filterfw/core/Filter;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/FilterGraph;->mFilters:Ljava/util/HashSet;

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/filterfw/core/FilterGraph;->mIsReady:Z

    return v0
.end method

.method public setAutoBranchMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/filterfw/core/FilterGraph;->mAutoBranchMode:I

    return-void
.end method

.method public setDiscardUnconnectedOutputs(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/filterfw/core/FilterGraph;->mDiscardUnconnectedOutputs:Z

    return-void
.end method

.method public setTypeCheckMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/filterfw/core/FilterGraph;->mTypeCheckMode:I

    return-void
.end method

.method public setupFilters()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/filterfw/core/FilterGraph;->mDiscardUnconnectedOutputs:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/filterfw/core/FilterGraph;->discardUnconnectedOutputs()V

    .line 3
    :cond_0
    invoke-direct {p0}, Landroid/filterfw/core/FilterGraph;->connectPorts()V

    .line 4
    invoke-direct {p0}, Landroid/filterfw/core/FilterGraph;->checkConnections()V

    .line 5
    invoke-direct {p0}, Landroid/filterfw/core/FilterGraph;->runTypeCheck()V

    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/FilterGraph;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/filterfw/core/FilterGraph;->flushFrames()V

    .line 3
    iget-object v0, p0, Landroid/filterfw/core/FilterGraph;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/Filter;

    .line 4
    invoke-virtual {v1, p1}, Landroid/filterfw/core/Filter;->performTearDown(Landroid/filterfw/core/FilterContext;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Landroid/filterfw/core/FilterGraph;->mFilters:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 6
    iget-object p1, p0, Landroid/filterfw/core/FilterGraph;->mNameMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Landroid/filterfw/core/FilterGraph;->mIsReady:Z

    :cond_1
    return-void
.end method
