.class Landroid/os/storage/StorageManager$ObbListenerDelegate$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/storage/StorageManager$ObbListenerDelegate;-><init>(Landroid/os/storage/StorageManager;Landroid/os/storage/OnObbStateChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/os/storage/StorageManager$ObbListenerDelegate;

.field final synthetic val$this$0:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>(Landroid/os/storage/StorageManager$ObbListenerDelegate;Landroid/os/Looper;Landroid/os/storage/StorageManager;)V
    .locals 0

    iput-object p1, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate$1;->this$1:Landroid/os/storage/StorageManager$ObbListenerDelegate;

    iput-object p3, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate$1;->val$this$0:Landroid/os/storage/StorageManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate$1;->this$1:Landroid/os/storage/StorageManager$ObbListenerDelegate;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/storage/StorageManager$ObbListenerDelegate;->getListener()Landroid/os/storage/OnObbStateChangeListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/lang/String;

    .line 13
    .line 14
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 15
    .line 16
    invoke-virtual {v0, v1, p1}, Landroid/os/storage/OnObbStateChangeListener;->onObbStateChange(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
