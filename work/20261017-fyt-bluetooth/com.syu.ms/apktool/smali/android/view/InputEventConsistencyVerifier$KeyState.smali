.class final Landroid/view/InputEventConsistencyVerifier$KeyState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InputEventConsistencyVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyState"
.end annotation


# static fields
.field private static mRecycledList:Landroid/view/InputEventConsistencyVerifier$KeyState;

.field private static mRecycledListLock:Ljava/lang/Object;


# instance fields
.field public deviceId:I

.field public keyCode:I

.field public next:Landroid/view/InputEventConsistencyVerifier$KeyState;

.field public source:I

.field public unhandled:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->mRecycledListLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(III)Landroid/view/InputEventConsistencyVerifier$KeyState;
    .locals 3

    .line 1
    sget-object v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->mRecycledListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->mRecycledList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    sput-object v2, Landroid/view/InputEventConsistencyVerifier$KeyState;->mRecycledList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Landroid/view/InputEventConsistencyVerifier$KeyState;

    invoke-direct {v1}, Landroid/view/InputEventConsistencyVerifier$KeyState;-><init>()V

    .line 5
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iput p0, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->deviceId:I

    .line 7
    iput p1, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->source:I

    .line 8
    iput p2, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->keyCode:I

    const/4 p0, 0x0

    .line 9
    iput-boolean p0, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->unhandled:Z

    return-object v1

    :catchall_0
    move-exception p0

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public recycle()V
    .locals 2

    .line 1
    sget-object v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->mRecycledListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->mRecycledList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    iput-object v1, p0, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 3
    sput-object v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->mRecycledList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
