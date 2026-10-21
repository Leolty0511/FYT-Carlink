.class Landroid/filterfw/core/GLFrameTimer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mTimer:Landroid/filterfw/core/StopWatchMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Landroid/filterfw/core/StopWatchMap;
    .locals 1

    .line 1
    sget-object v0, Landroid/filterfw/core/GLFrameTimer;->mTimer:Landroid/filterfw/core/StopWatchMap;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/filterfw/core/StopWatchMap;

    invoke-direct {v0}, Landroid/filterfw/core/StopWatchMap;-><init>()V

    sput-object v0, Landroid/filterfw/core/GLFrameTimer;->mTimer:Landroid/filterfw/core/StopWatchMap;

    .line 3
    :cond_0
    sget-object v0, Landroid/filterfw/core/GLFrameTimer;->mTimer:Landroid/filterfw/core/StopWatchMap;

    return-object v0
.end method
