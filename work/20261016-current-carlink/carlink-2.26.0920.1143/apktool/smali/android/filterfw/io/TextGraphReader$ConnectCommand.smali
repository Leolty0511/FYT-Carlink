.class Landroid/filterfw/io/TextGraphReader$ConnectCommand;
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
    name = "ConnectCommand"
.end annotation


# instance fields
.field private mSourceFilter:Ljava/lang/String;

.field private mSourcePort:Ljava/lang/String;

.field private mTargetFilter:Ljava/lang/String;

.field private mTargetName:Ljava/lang/String;

.field final synthetic this$0:Landroid/filterfw/io/TextGraphReader;


# direct methods
.method public constructor <init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->this$0:Landroid/filterfw/io/TextGraphReader;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->mSourceFilter:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->mSourcePort:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->mTargetFilter:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->mTargetName:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public execute(Landroid/filterfw/io/TextGraphReader;)V
    .locals 4

    invoke-static {p1}, Landroid/filterfw/io/TextGraphReader;->access$200(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/FilterGraph;

    move-result-object p1

    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->mSourceFilter:Ljava/lang/String;

    iget-object v1, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->mSourcePort:Ljava/lang/String;

    iget-object v2, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->mTargetFilter:Ljava/lang/String;

    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/filterfw/core/FilterGraph;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
