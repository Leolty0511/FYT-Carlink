.class Landroid/os/storage/StorageManager$ListenerDelegate$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/storage/StorageManager$ListenerDelegate;-><init>(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Landroid/os/storage/StorageManager$ListenerDelegate;

.field public final synthetic val$this$0:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>(Landroid/os/storage/StorageManager$ListenerDelegate;Landroid/os/Looper;Landroid/os/storage/StorageManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/os/storage/StorageManager$ListenerDelegate$1;->this$1:Landroid/os/storage/StorageManager$ListenerDelegate;

    iput-object p3, p0, Landroid/os/storage/StorageManager$ListenerDelegate$1;->val$this$0:Landroid/os/storage/StorageManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/StorageManager$StorageEvent;

    .line 2
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3
    check-cast v0, Landroid/os/storage/StorageManager$UmsConnectionChangedStorageEvent;

    .line 4
    iget-object p1, p0, Landroid/os/storage/StorageManager$ListenerDelegate$1;->this$1:Landroid/os/storage/StorageManager$ListenerDelegate;

    iget-object p1, p1, Landroid/os/storage/StorageManager$ListenerDelegate;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    iget-boolean v0, v0, Landroid/os/storage/StorageManager$UmsConnectionChangedStorageEvent;->available:Z

    invoke-virtual {p1, v0}, Landroid/os/storage/StorageEventListener;->onUsbMassStorageConnectionChanged(Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 5
    check-cast v0, Landroid/os/storage/StorageManager$StorageStateChangedStorageEvent;

    .line 6
    iget-object p1, p0, Landroid/os/storage/StorageManager$ListenerDelegate$1;->this$1:Landroid/os/storage/StorageManager$ListenerDelegate;

    iget-object p1, p1, Landroid/os/storage/StorageManager$ListenerDelegate;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    iget-object v1, v0, Landroid/os/storage/StorageManager$StorageStateChangedStorageEvent;->path:Ljava/lang/String;

    iget-object v2, v0, Landroid/os/storage/StorageManager$StorageStateChangedStorageEvent;->oldState:Ljava/lang/String;

    iget-object v0, v0, Landroid/os/storage/StorageManager$StorageStateChangedStorageEvent;->newState:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v0}, Landroid/os/storage/StorageEventListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StorageManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
