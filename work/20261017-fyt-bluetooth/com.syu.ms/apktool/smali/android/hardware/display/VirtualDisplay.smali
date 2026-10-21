.class public final Landroid/hardware/display/VirtualDisplay;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mDisplay:Landroid/view/Display;

.field private final mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManagerGlobal;Landroid/view/Display;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/hardware/display/VirtualDisplay;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    .line 3
    iput-object p2, p0, Landroid/hardware/display/VirtualDisplay;->mDisplay:Landroid/view/Display;

    .line 4
    iput-object p3, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public getDisplay()Landroid/view/Display;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroid/hardware/display/VirtualDisplay;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManagerGlobal;->releaseVirtualDisplay(Landroid/os/IBinder;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/os/IBinder;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VirtualDisplay{display="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
