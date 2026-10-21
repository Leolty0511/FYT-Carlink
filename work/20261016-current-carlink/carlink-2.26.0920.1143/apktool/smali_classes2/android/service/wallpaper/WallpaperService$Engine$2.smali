.class Landroid/service/wallpaper/WallpaperService$Engine$2;
.super Lcom/android/internal/view/BaseIWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService$Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/wallpaper/WallpaperService$Engine;


# direct methods
.method public constructor <init>(Landroid/service/wallpaper/WallpaperService$Engine;)V
    .locals 0

    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-direct {p0}, Lcom/android/internal/view/BaseIWindow;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchAppVisibility(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    .line 2
    .line 3
    iget-object v1, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    .line 4
    .line 5
    iget-boolean v1, v1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 10
    .line 11
    const/16 v1, 0x271a

    .line 12
    .line 13
    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    .line 18
    .line 19
    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    new-instance v1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, v1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    .line 12
    .line 13
    iput p2, v1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->x:I

    .line 14
    .line 15
    iput p3, v1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->y:I

    .line 16
    .line 17
    iput p4, v1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->z:I

    .line 18
    .line 19
    iput-object p5, v1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->extras:Landroid/os/Bundle;

    .line 20
    .line 21
    iput-boolean p6, v1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    .line 22
    .line 23
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    .line 24
    .line 25
    iget-object p1, p1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 26
    .line 27
    const/16 p2, 0x2729

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 34
    .line 35
    iget-object p2, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    .line 36
    .line 37
    iget-object p2, p2, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 38
    .line 39
    invoke-virtual {p2, p1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 40
    .line 41
    .line 42
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p1
.end method

.method public dispatchWallpaperOffsets(FFFFZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    .line 7
    .line 8
    iput p1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    .line 9
    .line 10
    iput p2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffset:F

    .line 11
    .line 12
    iput p3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    .line 13
    .line 14
    iput p4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffsetStep:F

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    if-eqz p5, :cond_0

    .line 18
    .line 19
    iput-boolean p1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    .line 20
    .line 21
    :cond_0
    iget-boolean p2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    .line 22
    .line 23
    if-nez p2, :cond_1

    .line 24
    .line 25
    iput-boolean p1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    .line 26
    .line 27
    iget-object p1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 28
    .line 29
    const/16 p2, 0x2724

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object p2, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    .line 36
    .line 37
    iget-object p2, p2, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 38
    .line 39
    invoke-virtual {p2, p1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p1
.end method

.method public moved(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 4
    .line 5
    const/16 v1, 0x2733

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageII(III)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p2, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    .line 12
    .line 13
    iget-object p2, p2, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 14
    .line 15
    invoke-virtual {p2, p1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;Landroid/graphics/Rect;ZZI)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    .line 2
    .line 3
    iget-object p1, p1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 4
    .line 5
    const/16 p2, 0x272e

    .line 6
    .line 7
    invoke-virtual {p1, p2, p7, p6}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p2, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    .line 12
    .line 13
    iget-object p2, p2, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 14
    .line 15
    invoke-virtual {p2, p1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
