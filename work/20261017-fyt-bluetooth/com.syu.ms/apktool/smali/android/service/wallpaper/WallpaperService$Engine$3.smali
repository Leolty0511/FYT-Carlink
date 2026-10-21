.class Landroid/service/wallpaper/WallpaperService$Engine$3;
.super Lv/b;
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
.field public final synthetic this$1:Landroid/service/wallpaper/WallpaperService$Engine;


# direct methods
.method public constructor <init>(Landroid/service/wallpaper/WallpaperService$Engine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-direct {p0}, Lv/b;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchAppVisibility(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v1, v1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    if-nez v1, :cond_0

    .line 2
    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lo/b;

    const/16 v1, 0x271a

    invoke-virtual {v0, v1, p1}, Lo/b;->c(II)Landroid/os/Message;

    move-result-object p1

    .line 3
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lo/b;

    invoke-virtual {v0, p1}, Lo/b;->j(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;

    invoke-direct {v1}, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;-><init>()V

    .line 3
    iput-object p1, v1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    .line 4
    iput p2, v1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->x:I

    .line 5
    iput p3, v1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->y:I

    .line 6
    iput p4, v1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->z:I

    .line 7
    iput-object p5, v1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->extras:Landroid/os/Bundle;

    .line 8
    iput-boolean p6, v1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    .line 9
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object p1, p1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lo/b;

    const/16 p2, 0x2729

    invoke-virtual {p1, p2}, Lo/b;->b(I)Landroid/os/Message;

    move-result-object p1

    .line 10
    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    iget-object p2, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object p2, p2, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lo/b;

    invoke-virtual {p2, p1}, Lo/b;->j(Landroid/os/Message;)V

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dispatchWallpaperOffsets(FFFFZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iput p1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    .line 3
    iput p2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffset:F

    .line 4
    iput p3, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    .line 5
    iput p4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffsetStep:F

    const/4 p1, 0x1

    if-eqz p5, :cond_0

    .line 6
    iput-boolean p1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    .line 7
    :cond_0
    iget-boolean p2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    if-nez p2, :cond_1

    .line 8
    iput-boolean p1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    .line 9
    iget-object p1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lo/b;

    const/16 p2, 0x2724

    invoke-virtual {p1, p2}, Lo/b;->b(I)Landroid/os/Message;

    move-result-object p1

    .line 10
    iget-object p2, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object p2, p2, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lo/b;

    invoke-virtual {p2, p1}, Lo/b;->j(Landroid/os/Message;)V

    .line 11
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public moved(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lo/b;

    const/16 v1, 0x2733

    invoke-virtual {v0, v1, p1, p2}, Lo/b;->d(III)Landroid/os/Message;

    move-result-object p1

    .line 2
    iget-object p2, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object p2, p2, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lo/b;

    invoke-virtual {p2, p1}, Lo/b;->j(Landroid/os/Message;)V

    return-void
.end method

.method public resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object p1, p1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lo/b;

    const/16 p2, 0x272e

    invoke-virtual {p1, p2, p5}, Lo/b;->c(II)Landroid/os/Message;

    move-result-object p1

    .line 2
    iget-object p2, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object p2, p2, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lo/b;

    invoke-virtual {p2, p1}, Lo/b;->j(Landroid/os/Message;)V

    return-void
.end method
