.class Landroid/os/storage/StorageManager$ListenerDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/StorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListenerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field public final mStorageEventListener:Landroid/os/storage/StorageEventListener;

.field public final synthetic this$0:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageEventListener;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/os/storage/StorageManager$ListenerDelegate;->this$0:Landroid/os/storage/StorageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroid/os/storage/StorageManager$ListenerDelegate;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    .line 3
    new-instance p2, Landroid/os/storage/StorageManager$ListenerDelegate$1;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->access$400(Landroid/os/storage/StorageManager;)Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0, p1}, Landroid/os/storage/StorageManager$ListenerDelegate$1;-><init>(Landroid/os/storage/StorageManager$ListenerDelegate;Landroid/os/Looper;Landroid/os/storage/StorageManager;)V

    iput-object p2, p0, Landroid/os/storage/StorageManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public getListener()Landroid/os/storage/StorageEventListener;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/os/storage/StorageManager$ListenerDelegate;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    return-object v0
.end method

.method public sendShareAvailabilityChanged(Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/storage/StorageManager$UmsConnectionChangedStorageEvent;

    iget-object v1, p0, Landroid/os/storage/StorageManager$ListenerDelegate;->this$0:Landroid/os/storage/StorageManager;

    invoke-direct {v0, v1, p1}, Landroid/os/storage/StorageManager$UmsConnectionChangedStorageEvent;-><init>(Landroid/os/storage/StorageManager;Z)V

    .line 2
    iget-object p1, p0, Landroid/os/storage/StorageManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager$StorageEvent;->getMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/storage/StorageManager$StorageStateChangedStorageEvent;

    iget-object v1, p0, Landroid/os/storage/StorageManager$ListenerDelegate;->this$0:Landroid/os/storage/StorageManager;

    invoke-direct {v0, v1, p1, p2, p3}, Landroid/os/storage/StorageManager$StorageStateChangedStorageEvent;-><init>(Landroid/os/storage/StorageManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Landroid/os/storage/StorageManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager$StorageEvent;->getMessage()Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
