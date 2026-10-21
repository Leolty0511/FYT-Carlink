.class public Lv/b;
.super Landroid/view/IWindow$Stub;
.source "SourceFile"


# instance fields
.field public mSeq:I

.field private mSession:Landroid/view/IWindowSession;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/IWindow$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public closeSystemDialogs(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public dispatchAppVisibility(Z)V
    .locals 0

    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)V
    .locals 0

    return-void
.end method

.method public dispatchGetNewSurface()V
    .locals 0

    return-void
.end method

.method public dispatchScreenState(Z)V
    .locals 0

    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(IIII)V
    .locals 0

    .line 1
    iput p1, p0, Lv/b;->mSeq:I

    return-void
.end method

.method public dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 0

    if-eqz p6, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lv/b;->mSession:Landroid/view/IWindowSession;

    invoke-virtual {p0}, Landroid/view/IWindow$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Landroid/view/IWindowSession;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public dispatchWallpaperOffsets(FFFFZ)V
    .locals 0

    if-eqz p5, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lv/b;->mSession:Landroid/view/IWindowSession;

    invoke-virtual {p0}, Landroid/view/IWindow$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/IWindowSession;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public doneAnimating()V
    .locals 0

    return-void
.end method

.method public executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    return-void
.end method

.method public moved(II)V
    .locals 0

    return-void
.end method

.method public resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    .locals 0

    if-eqz p5, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lv/b;->mSession:Landroid/view/IWindowSession;

    invoke-interface {p1, p0}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setSession(Landroid/view/IWindowSession;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv/b;->mSession:Landroid/view/IWindowSession;

    return-void
.end method

.method public windowFocusChanged(ZZ)V
    .locals 0

    return-void
.end method
