.class Landroid/media/MediaFocusControl$DisplayInfoForServer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DisplayInfoForServer"
.end annotation


# instance fields
.field private mArtworkExpectedHeight:I

.field private mArtworkExpectedWidth:I

.field private mClientNotifListComp:Landroid/content/ComponentName;

.field private mEnabled:Z

.field private final mRcDisplay:Landroid/media/IRemoteControlDisplay;

.field private final mRcDisplayBinder:Landroid/os/IBinder;

.field private mWantsPositionSync:Z

.field public final synthetic this$0:Landroid/media/MediaFocusControl;


# direct methods
.method public constructor <init>(Landroid/media/MediaFocusControl;Landroid/media/IRemoteControlDisplay;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->this$0:Landroid/media/MediaFocusControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I

    .line 3
    iput p1, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mWantsPositionSync:Z

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z

    .line 6
    iput-object p2, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    .line 7
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplayBinder:Landroid/os/IBinder;

    .line 8
    iput p3, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I

    .line 9
    iput p4, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I

    return-void
.end method

.method public static synthetic access$1000(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I

    return p0
.end method

.method public static synthetic access$1002(Landroid/media/MediaFocusControl$DisplayInfoForServer;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I

    return p1
.end method

.method public static synthetic access$3200(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mWantsPositionSync:Z

    return p0
.end method

.method public static synthetic access$3202(Landroid/media/MediaFocusControl$DisplayInfoForServer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mWantsPositionSync:Z

    return p1
.end method

.method public static synthetic access$600(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/content/ComponentName;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mClientNotifListComp:Landroid/content/ComponentName;

    return-object p0
.end method

.method public static synthetic access$602(Landroid/media/MediaFocusControl$DisplayInfoForServer;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mClientNotifListComp:Landroid/content/ComponentName;

    return-object p1
.end method

.method public static synthetic access$700(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z

    return p0
.end method

.method public static synthetic access$702(Landroid/media/MediaFocusControl$DisplayInfoForServer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z

    return p1
.end method

.method public static synthetic access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    return-object p0
.end method

.method public static synthetic access$900(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I

    return p0
.end method

.method public static synthetic access$902(Landroid/media/MediaFocusControl$DisplayInfoForServer;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I

    return p1
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->this$0:Landroid/media/MediaFocusControl;

    invoke-static {v0}, Landroid/media/MediaFocusControl;->access$3300(Landroid/media/MediaFocusControl;)Ljava/util/Stack;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "MediaFocusControl"

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteControl: display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " died"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->this$0:Landroid/media/MediaFocusControl;

    invoke-static {v1}, Landroid/media/MediaFocusControl;->access$3400(Landroid/media/MediaFocusControl;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    .line 6
    iget-object v2, v2, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    iget-object v3, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-ne v2, v3, :cond_0

    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 8
    monitor-exit v0

    return-void

    .line 9
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public init()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplayBinder:Landroid/os/IBinder;

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    .line 2
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerRemoteControlDisplay() has a dead client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplayBinder:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaFocusControl"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public release()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplayBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaFocusControl"

    const-string v2, "Error in DisplaInfoForServer.relase()"

    .line 2
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
