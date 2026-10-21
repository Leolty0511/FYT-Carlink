.class public final Landroid/hardware/display/VirtualDisplay;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/VirtualDisplay$Callback;
    }
.end annotation


# instance fields
.field private final mDisplay:Landroid/view/Display;

.field private final mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

.field private mSurface:Landroid/view/Surface;

.field private mToken:Landroid/hardware/display/IVirtualDisplayCallback;


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManagerGlobal;Landroid/view/Display;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/hardware/display/VirtualDisplay;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/hardware/display/VirtualDisplay;->mDisplay:Landroid/view/Display;

    .line 7
    .line 8
    iput-object p3, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    .line 9
    .line 10
    iput-object p4, p0, Landroid/hardware/display/VirtualDisplay;->mSurface:Landroid/view/Surface;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getDisplay()Landroid/view/Display;
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroid/hardware/display/VirtualDisplay;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManagerGlobal;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public resize(III)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/hardware/display/DisplayManagerGlobal;->resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mSurface:Landroid/view/Surface;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Landroid/hardware/display/VirtualDisplay;->mSurface:Landroid/view/Surface;

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VirtualDisplay{display="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", surface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplay;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
