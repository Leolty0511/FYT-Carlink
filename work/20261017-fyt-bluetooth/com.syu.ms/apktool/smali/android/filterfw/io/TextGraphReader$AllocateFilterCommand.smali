.class Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;
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
    name = "AllocateFilterCommand"
.end annotation


# instance fields
.field private mClassName:Ljava/lang/String;

.field private mFilterName:Ljava/lang/String;

.field public final synthetic this$0:Landroid/filterfw/io/TextGraphReader;


# direct methods
.method public constructor <init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;->this$0:Landroid/filterfw/io/TextGraphReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;->mClassName:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;->mFilterName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute(Landroid/filterfw/io/TextGraphReader;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/filterfw/io/TextGraphReader;->access$000(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/FilterFactory;

    move-result-object v0

    iget-object v1, p0, Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;->mClassName:Ljava/lang/String;

    iget-object v2, p0, Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;->mFilterName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/FilterFactory;->createFilterByClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-static {p1, v0}, Landroid/filterfw/io/TextGraphReader;->access$102(Landroid/filterfw/io/TextGraphReader;Landroid/filterfw/core/Filter;)Landroid/filterfw/core/Filter;

    return-void

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
