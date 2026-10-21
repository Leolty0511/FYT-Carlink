.class Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService$VolumeStreamState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VolumeDeathHandler"
.end annotation


# instance fields
.field private mICallback:Landroid/os/IBinder;

.field private mMuteCount:I

.field public final synthetic this$1:Landroid/media/AudioService$VolumeStreamState;


# direct methods
.method public constructor <init>(Landroid/media/AudioService$VolumeStreamState;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mICallback:Landroid/os/IBinder;

    return-void
.end method

.method public static synthetic access$1800(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    return p0
.end method

.method public static synthetic access$1802(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    return p1
.end method

.method public static synthetic access$4300(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mICallback:Landroid/os/IBinder;

    return-object p0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Volume service client died for stream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    invoke-static {v1}, Landroid/media/AudioService$VolumeStreamState;->access$4200(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mute(Z)V

    :cond_0
    return-void
.end method

.method public mute(Z)V
    .locals 7

    const-string v0, "AudioService"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 1
    iget p1, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    if-nez p1, :cond_1

    .line 2
    :try_start_0
    iget-object p1, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mICallback:Landroid/os/IBinder;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 4
    :cond_0
    iget-object p1, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$1700(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$300(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v2

    move v1, p1

    goto :goto_0

    .line 6
    :catch_0
    invoke-virtual {p0}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->binderDied()V

    return-void

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stream: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$4200(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " was already muted by this client"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :goto_0
    iget p1, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    add-int/2addr p1, v2

    iput p1, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    goto :goto_1

    .line 9
    :cond_2
    iget p1, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    if-nez p1, :cond_3

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected unmute for stream: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$4200(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    sub-int/2addr p1, v2

    .line 11
    iput p1, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I

    if-nez p1, :cond_5

    .line 12
    iget-object p1, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$1700(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 13
    iget-object p1, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mICallback:Landroid/os/IBinder;

    if-eqz p1, :cond_4

    .line 14
    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 15
    :cond_4
    iget-object p1, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$300(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result p1

    if-nez p1, :cond_5

    move v1, v2

    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    .line 16
    iget-object p1, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    iget-object p1, p1, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    invoke-static {p1}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->this$1:Landroid/media/AudioService$VolumeStreamState;

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_6
    return-void
.end method
