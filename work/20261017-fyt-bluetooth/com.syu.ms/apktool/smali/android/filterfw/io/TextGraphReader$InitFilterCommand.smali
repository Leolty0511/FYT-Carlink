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

.field public final synthetic this$0:Landroid/filterfw/io/TextGraphReader;


# direct methods
.method public constructor <init>(Landroid/filterfw/io/TextGraphReader;Landroid/filterfw/core/KeyValueMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/filterfw/io/TextGraphReader$InitFilterCommand;->this$0:Landroid/filterfw/io/TextGraphReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroid/filterfw/io/TextGraphReader$InitFilterCommand;->mParams:Landroid/filterfw/core/KeyValueMap;

    return-void
.end method


# virtual methods
.method public execute(Landroid/filterfw/io/TextGraphReader;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/filterfw/io/TextGraphReader;->access$100(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/Filter;

    move-result-object v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/filterfw/io/TextGraphReader$InitFilterCommand;->mParams:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, v1}, Landroid/filterfw/core/Filter;->initWithValueMap(Landroid/filterfw/core/KeyValueMap;)V
    :try_end_0
    .catch Landroid/filterfw/core/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-static {p1}, Landroid/filterfw/io/TextGraphReader;->access$200(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/FilterGraph;

    move-result-object p1

    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader$InitFilterCommand;->this$0:Landroid/filterfw/io/TextGraphReader;

    invoke-static {v0}, Landroid/filterfw/io/TextGraphReader;->access$100(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/Filter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/filterfw/core/FilterGraph;->addFilter(Landroid/filterfw/core/Filter;)Z

    return-void

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
