.class final Landroid/media/SoundPool$EventHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SoundPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>(Landroid/media/SoundPool;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/SoundPool$EventHandler;->this$0:Landroid/media/SoundPool;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const-string v0, "SoundPool"

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "Unknown message type "

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget p1, p1, Landroid/os/Message;->what:I

    .line 16
    .line 17
    invoke-static {v1, p1, v0}, Landroid/app/m;->C(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-static {}, Landroid/media/SoundPool;->access$000()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const-string v0, "SoundPool"

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v2, "Sample "

    .line 32
    .line 33
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, " loaded"

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object v0, p0, Landroid/media/SoundPool$EventHandler;->this$0:Landroid/media/SoundPool;

    .line 54
    .line 55
    invoke-static {v0}, Landroid/media/SoundPool;->access$100(Landroid/media/SoundPool;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    monitor-enter v0

    .line 60
    :try_start_0
    iget-object v1, p0, Landroid/media/SoundPool$EventHandler;->this$0:Landroid/media/SoundPool;

    .line 61
    .line 62
    invoke-static {v1}, Landroid/media/SoundPool;->access$200(Landroid/media/SoundPool;)Landroid/media/SoundPool$OnLoadCompleteListener;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    iget-object v1, p0, Landroid/media/SoundPool$EventHandler;->this$0:Landroid/media/SoundPool;

    .line 69
    .line 70
    invoke-static {v1}, Landroid/media/SoundPool;->access$200(Landroid/media/SoundPool;)Landroid/media/SoundPool$OnLoadCompleteListener;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iget-object v2, p0, Landroid/media/SoundPool$EventHandler;->this$0:Landroid/media/SoundPool;

    .line 75
    .line 76
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 77
    .line 78
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 79
    .line 80
    invoke-interface {v1, v2, v3, p1}, Landroid/media/SoundPool$OnLoadCompleteListener;->onLoadComplete(Landroid/media/SoundPool;II)V

    .line 81
    .line 82
    .line 83
    :cond_2
    monitor-exit v0

    .line 84
    return-void

    .line 85
    :catchall_0
    move-exception p1

    .line 86
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    throw p1
.end method
