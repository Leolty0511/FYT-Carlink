.class Landroid/filterfw/io/TextGraphReader$InitFilterCommand;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/filterfw/io/TextGraphReader$Command;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterfw/io/TextGraphReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InitFilterCommand"
.end annotation


# instance fields
.field private mParams:Landroid/filterfw/core/KeyValueMap;

.field final synthetic this$0:Landroid/filterfw/io/TextGraphReader;


# direct methods
.method public constructor <init>(Landroid/filterfw/io/TextGraphReader;Landroid/filterfw/core/KeyValueMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/filterfw/io/TextGraphReader$InitFilterCommand;->this$0:Landroid/filterfw/io/TextGraphReader;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroid/filterfw/io/TextGraphReader$InitFilterCommand;->mParams:Landroid/filterfw/core/KeyValueMap;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public execute(Landroid/filterfw/io/TextGraphReader;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/filterfw/io/TextGraphReader;->access$100(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/Filter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    iget-object v1, p0, Landroid/filterfw/io/TextGraphReader$InitFilterCommand;->mParams:Landroid/filterfw/core/KeyValueMap;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/filterfw/core/Filter;->initWithValueMap(Landroid/filterfw/core/KeyValueMap;)V
    :try_end_0
    .catch Landroid/filterfw/core/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Landroid/filterfw/io/TextGraphReader;->access$200(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/FilterGraph;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader$InitFilterCommand;->this$0:Landroid/filterfw/io/TextGraphReader;

    .line 15
    .line 16
    invoke-static {v0}, Landroid/filterfw/io/TextGraphReader;->access$100(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/Filter;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Landroid/filterfw/core/FilterGraph;->addFilter(Landroid/filterfw/core/Filter;)Z

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catch_0
    move-exception p1

    .line 25
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v0, p1}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0
.end method
