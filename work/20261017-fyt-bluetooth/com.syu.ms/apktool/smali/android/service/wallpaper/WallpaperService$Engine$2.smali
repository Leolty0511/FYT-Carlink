.class Landroid/service/wallpaper/WallpaperService$Engine$2;
.super Lv/c;
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
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-direct {p0}, Lv/c;-><init>()V

    const/4 p1, 0x2

    .line 2
    iput p1, p0, Lv/c;->mRequestedFormat:I

    return-void
.end method


# virtual methods
.method public isCreating()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    return v0
.end method

.method public onAllowLockCanvas()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z

    return v0
.end method

.method public onRelayoutContainer()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lo/b;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lo/b;->b(I)Landroid/os/Message;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lo/b;

    invoke-virtual {v1, v0}, Lo/b;->j(Landroid/os/Message;)V

    return-void
.end method

.method public onUpdateSurface()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lo/b;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lo/b;->b(I)Landroid/os/Message;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lo/b;

    invoke-virtual {v1, v0}, Lo/b;->j(Landroid/os/Message;)V

    return-void
.end method

.method public setFixedSize(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine$2;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFixedSizeAllowed:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Lv/c;->setFixedSize(II)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Wallpapers currently only support sizing from layout"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setKeepScreenOn(Z)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Wallpapers do not support keep screen on"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
