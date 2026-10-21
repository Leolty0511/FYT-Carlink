.class public Landroid/filterfw/GraphEnvironment;
.super Landroid/filterfw/MffEnvironment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterfw/GraphEnvironment$GraphHandle;
    }
.end annotation


# static fields
.field public static final MODE_ASYNCHRONOUS:I = 0x1

.field public static final MODE_SYNCHRONOUS:I = 0x2


# instance fields
.field private mGraphReader:Landroid/filterfw/io/GraphReader;

.field private mGraphs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/filterfw/GraphEnvironment$GraphHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroid/filterfw/MffEnvironment;-><init>(Landroid/filterfw/core/FrameManager;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/filterfw/GraphEnvironment;->mGraphs:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/filterfw/core/FrameManager;Landroid/filterfw/io/GraphReader;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/filterfw/MffEnvironment;-><init>(Landroid/filterfw/core/FrameManager;)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/filterfw/GraphEnvironment;->mGraphs:Ljava/util/ArrayList;

    .line 5
    iput-object p2, p0, Landroid/filterfw/GraphEnvironment;->mGraphReader:Landroid/filterfw/io/GraphReader;

    return-void
.end method


# virtual methods
.method public addGraph(Landroid/filterfw/core/FilterGraph;)I
    .locals 1

    .line 1
    new-instance v0, Landroid/filterfw/GraphEnvironment$GraphHandle;

    invoke-direct {v0, p0, p1}, Landroid/filterfw/GraphEnvironment$GraphHandle;-><init>(Landroid/filterfw/GraphEnvironment;Landroid/filterfw/core/FilterGraph;)V

    .line 2
    iget-object p1, p0, Landroid/filterfw/GraphEnvironment;->mGraphs:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Landroid/filterfw/GraphEnvironment;->mGraphs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public varargs addReferences([Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/filterfw/GraphEnvironment;->getGraphReader()Landroid/filterfw/io/GraphReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/filterfw/io/GraphReader;->addReferencesByKeysAndValues([Ljava/lang/Object;)V

    return-void
.end method

.method public getGraph(I)Landroid/filterfw/core/FilterGraph;
    .locals 3

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment;->mGraphs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment;->mGraphs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/filterfw/GraphEnvironment$GraphHandle;

    invoke-virtual {p1}, Landroid/filterfw/GraphEnvironment$GraphHandle;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid graph ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " specified in runGraph()!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGraphReader()Landroid/filterfw/io/GraphReader;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment;->mGraphReader:Landroid/filterfw/io/GraphReader;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/filterfw/io/TextGraphReader;

    invoke-direct {v0}, Landroid/filterfw/io/TextGraphReader;-><init>()V

    iput-object v0, p0, Landroid/filterfw/GraphEnvironment;->mGraphReader:Landroid/filterfw/io/GraphReader;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment;->mGraphReader:Landroid/filterfw/io/GraphReader;

    return-object v0
.end method

.method public getRunner(II)Landroid/filterfw/core/GraphRunner;
    .locals 2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 1
    iget-object p2, p0, Landroid/filterfw/GraphEnvironment;->mGraphs:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/filterfw/GraphEnvironment$GraphHandle;

    invoke-virtual {p0}, Landroid/filterfw/MffEnvironment;->getContext()Landroid/filterfw/core/FilterContext;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/filterfw/GraphEnvironment$GraphHandle;->getSyncRunner(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/GraphRunner;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid execution mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " specified in getRunner()!"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object p2, p0, Landroid/filterfw/GraphEnvironment;->mGraphs:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/filterfw/GraphEnvironment$GraphHandle;

    invoke-virtual {p0}, Landroid/filterfw/MffEnvironment;->getContext()Landroid/filterfw/core/FilterContext;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/filterfw/GraphEnvironment$GraphHandle;->getAsyncRunner(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/AsyncRunner;

    move-result-object p1

    return-object p1
.end method

.method public loadGraph(Landroid/content/Context;I)I
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/filterfw/GraphEnvironment;->getGraphReader()Landroid/filterfw/io/GraphReader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/filterfw/io/GraphReader;->readGraphResource(Landroid/content/Context;I)Landroid/filterfw/core/FilterGraph;

    move-result-object p1
    :try_end_0
    .catch Landroid/filterfw/io/GraphIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/filterfw/GraphEnvironment;->addGraph(Landroid/filterfw/core/FilterGraph;)I

    move-result p1

    return p1

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not read graph: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
