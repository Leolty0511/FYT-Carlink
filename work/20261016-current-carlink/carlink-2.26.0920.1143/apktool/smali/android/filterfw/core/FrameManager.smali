.class public abstract Landroid/filterfw/core/FrameManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/filterfw/core/FilterContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public duplicateFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public duplicateFrameToTarget(Landroid/filterfw/core/Frame;I)Landroid/filterfw/core/Frame;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p2}, Landroid/filterfw/core/MutableFrameFormat;->setTarget(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p2, p1}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    .line 17
    .line 18
    .line 19
    return-object p2
.end method

.method public getContext()Landroid/filterfw/core/FilterContext;
    .locals 1

    iget-object v0, p0, Landroid/filterfw/core/FrameManager;->mContext:Landroid/filterfw/core/FilterContext;

    return-object v0
.end method

.method public getGLEnvironment()Landroid/filterfw/core/GLEnvironment;
    .locals 1

    iget-object v0, p0, Landroid/filterfw/core/FrameManager;->mContext:Landroid/filterfw/core/FilterContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public abstract newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;
.end method

.method public abstract newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;
.end method

.method public abstract releaseFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;
.end method

.method public abstract retainFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;
.end method

.method public setContext(Landroid/filterfw/core/FilterContext;)V
    .locals 0

    iput-object p1, p0, Landroid/filterfw/core/FrameManager;->mContext:Landroid/filterfw/core/FilterContext;

    return-void
.end method

.method public tearDown()V
    .locals 0

    return-void
.end method
