.class Landroid/media/SoundPool$SoundPoolImpl$EventHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SoundPool$SoundPoolImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventHandler"
.end annotation


# instance fields
.field private mSoundPool:Landroid/media/SoundPool;

.field public final synthetic this$0:Landroid/media/SoundPool$SoundPoolImpl;


# direct methods
.method public constructor <init>(Landroid/media/SoundPool$SoundPoolImpl;Landroid/media/SoundPool;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/SoundPool$SoundPoolImpl$EventHandler;->this$0:Landroid/media/SoundPool$SoundPoolImpl;

    .line 2
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3
    iput-object p2, p0, Landroid/media/SoundPool$SoundPoolImpl$EventHandler;->mSoundPool:Landroid/media/SoundPool;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v0, "SoundPool"

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/media/SoundPool$SoundPoolImpl$EventHandler;->this$0:Landroid/media/SoundPool$SoundPoolImpl;

    invoke-static {v0}, Landroid/media/SoundPool$SoundPoolImpl;->access$000(Landroid/media/SoundPool$SoundPoolImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/media/SoundPool$SoundPoolImpl$EventHandler;->this$0:Landroid/media/SoundPool$SoundPoolImpl;

    invoke-static {v1}, Landroid/media/SoundPool$SoundPoolImpl;->access$100(Landroid/media/SoundPool$SoundPoolImpl;)Landroid/media/SoundPool$OnLoadCompleteListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Landroid/media/SoundPool$SoundPoolImpl$EventHandler;->this$0:Landroid/media/SoundPool$SoundPoolImpl;

    invoke-static {v1}, Landroid/media/SoundPool$SoundPoolImpl;->access$100(Landroid/media/SoundPool$SoundPoolImpl;)Landroid/media/SoundPool$OnLoadCompleteListener;

    move-result-object v1

    iget-object v2, p0, Landroid/media/SoundPool$SoundPoolImpl$EventHandler;->mSoundPool:Landroid/media/SoundPool;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v3, p1}, Landroid/media/SoundPool$OnLoadCompleteListener;->onLoadComplete(Landroid/media/SoundPool;II)V

    .line 6
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
