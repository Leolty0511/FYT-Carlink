.class Landroid/filterfw/core/GLFrameTimer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mTimer:Landroid/filterfw/core/StopWatchMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Landroid/filterfw/core/StopWatchMap;
    .locals 1

    .line 1
    sget-object v0, Landroid/filterfw/core/GLFrameTimer;->mTimer:Landroid/filterfw/core/StopWatchMap;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/filterfw/core/StopWatchMap;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/filterfw/core/StopWatchMap;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Landroid/filterfw/core/GLFrameTimer;->mTimer:Landroid/filterfw/core/StopWatchMap;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Landroid/filterfw/core/GLFrameTimer;->mTimer:Landroid/filterfw/core/StopWatchMap;

    .line 13
    .line 14
    return-object v0
.end method
