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

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Landroid/filterfw/GraphEnvironment$GraphHandle;-><init>(Landroid/filterfw/GraphEnvironment;Landroid/filterfw/core/FilterGraph;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroid/filterfw/GraphEnvironment;->mGraphs:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroid/filterfw/GraphEnvironment;->mGraphs:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    add-int/lit8 p1, p1, -0x1

    .line 18
    .line 19
    return p1
.end method

.method public varargs addReferences([Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Landroid/filterfw/GraphEnvironment;->getGraphReader()Landroid/filterfw/io/GraphReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/filterfw/io/GraphReader;->addReferencesByKeysAndValues([Ljava/lang/Object;)V

    return-void
.end method

.method public getGraph(I)Landroid/filterfw/core/FilterGraph;
    .locals 3

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment;->mGraphs:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ge p1, v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment;->mGraphs:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/filterfw/GraphEnvironment$GraphHandle;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/filterfw/GraphEnvironment$GraphHandle;->getGraph()Landroid/filterfw/core/FilterGraph;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string v1, "Invalid graph ID "

    .line 27
    .line 28
    const-string v2, " specified in runGraph()!"

    .line 29
    .line 30
    invoke-static {v1, p1, v2}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method

.method public getGraphReader()Landroid/filterfw/io/GraphReader;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment;->mGraphReader:Landroid/filterfw/io/GraphReader;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/filterfw/io/TextGraphReader;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/filterfw/io/TextGraphReader;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/filterfw/GraphEnvironment;->mGraphReader:Landroid/filterfw/io/GraphReader;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroid/filterfw/GraphEnvironment;->mGraphReader:Landroid/filterfw/io/GraphReader;

    .line 13
    .line 14
    return-object v0
.end method

.method public getRunner(II)Landroid/filterfw/core/GraphRunner;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p2, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-ne p2, v0, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Landroid/filterfw/GraphEnvironment;->mGraphs:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/filterfw/GraphEnvironment$GraphHandle;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/filterfw/MffEnvironment;->getContext()Landroid/filterfw/core/FilterContext;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Landroid/filterfw/GraphEnvironment$GraphHandle;->getSyncRunner(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/GraphRunner;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 25
    .line 26
    const-string v0, "Invalid execution mode "

    .line 27
    .line 28
    const-string v1, " specified in getRunner()!"

    .line 29
    .line 30
    invoke-static {v0, p2, v1}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :cond_1
    iget-object p2, p0, Landroid/filterfw/GraphEnvironment;->mGraphs:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Landroid/filterfw/GraphEnvironment$GraphHandle;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/filterfw/MffEnvironment;->getContext()Landroid/filterfw/core/FilterContext;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p1, p2}, Landroid/filterfw/GraphEnvironment$GraphHandle;->getAsyncRunner(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/AsyncRunner;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    return-object p1
.end method

.method public loadGraph(Landroid/content/Context;I)I
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/filterfw/GraphEnvironment;->getGraphReader()Landroid/filterfw/io/GraphReader;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/filterfw/io/GraphReader;->readGraphResource(Landroid/content/Context;I)Landroid/filterfw/core/FilterGraph;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catch Landroid/filterfw/io/GraphIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    invoke-virtual {p0, p1}, Landroid/filterfw/GraphEnvironment;->addGraph(Landroid/filterfw/core/FilterGraph;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :catch_0
    move-exception p1

    .line 15
    new-instance p2, Ljava/lang/RuntimeException;

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v1, "Could not read graph: "

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p2
.end method
