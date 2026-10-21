.class final Landroid/media/projection/MediaProjectionManager$CallbackDelegate;
.super Landroid/media/projection/IMediaProjectionWatcherCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/projection/MediaProjectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallbackDelegate"
.end annotation


# instance fields
.field private mCallback:Landroid/media/projection/MediaProjectionManager$Callback;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/media/projection/MediaProjectionManager$Callback;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/media/projection/IMediaProjectionWatcherCallback$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;->mCallback:Landroid/media/projection/MediaProjectionManager$Callback;

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    new-instance p2, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iput-object p2, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic access$000(Landroid/media/projection/MediaProjectionManager$CallbackDelegate;)Landroid/media/projection/MediaProjectionManager$Callback;
    .locals 0

    iget-object p0, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;->mCallback:Landroid/media/projection/MediaProjectionManager$Callback;

    return-object p0
.end method


# virtual methods
.method public onStart(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$1;

    invoke-direct {v1, p0, p1}, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$1;-><init>(Landroid/media/projection/MediaProjectionManager$CallbackDelegate;Landroid/media/projection/MediaProjectionInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStop(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$2;

    invoke-direct {v1, p0, p1}, Landroid/media/projection/MediaProjectionManager$CallbackDelegate$2;-><init>(Landroid/media/projection/MediaProjectionManager$CallbackDelegate;Landroid/media/projection/MediaProjectionInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
