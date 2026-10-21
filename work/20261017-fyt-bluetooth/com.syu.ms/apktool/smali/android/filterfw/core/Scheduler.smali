.class public abstract Landroid/filterfw/core/Scheduler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mGraph:Landroid/filterfw/core/FilterGraph;


# direct methods
.method public constructor <init>(Landroid/filterfw/core/FilterGraph;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/filterfw/core/Scheduler;->mGraph:Landroid/filterfw/core/FilterGraph;

    return-void
.end method


# virtual methods
.method public finished()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getGraph()Landroid/filterfw/core/FilterGraph;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/Scheduler;->mGraph:Landroid/filterfw/core/FilterGraph;

    return-object v0
.end method

.method public abstract reset()V
.end method

.method public abstract scheduleNextNode()Landroid/filterfw/core/Filter;
.end method
