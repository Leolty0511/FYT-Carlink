.class Landroid/os/storage/StorageManager$MountServiceBinderListener;
.super Landroid/os/storage/IMountServiceListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/StorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MountServiceBinderListener"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/os/storage/StorageManager;


# direct methods
.method private constructor <init>(Landroid/os/storage/StorageManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/os/storage/StorageManager$MountServiceBinderListener;->this$0:Landroid/os/storage/StorageManager;

    invoke-direct {p0}, Landroid/os/storage/IMountServiceListener$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageManager$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/os/storage/StorageManager$MountServiceBinderListener;-><init>(Landroid/os/storage/StorageManager;)V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/storage/StorageManager$MountServiceBinderListener;->this$0:Landroid/os/storage/StorageManager;

    invoke-static {v0}, Landroid/os/storage/StorageManager;->access$000(Landroid/os/storage/StorageManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Landroid/os/storage/StorageManager$MountServiceBinderListener;->this$0:Landroid/os/storage/StorageManager;

    invoke-static {v2}, Landroid/os/storage/StorageManager;->access$000(Landroid/os/storage/StorageManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager$ListenerDelegate;

    invoke-virtual {v2, p1, p2, p3}, Landroid/os/storage/StorageManager$ListenerDelegate;->sendStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUsbMassStorageConnectionChanged(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/storage/StorageManager$MountServiceBinderListener;->this$0:Landroid/os/storage/StorageManager;

    invoke-static {v0}, Landroid/os/storage/StorageManager;->access$000(Landroid/os/storage/StorageManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Landroid/os/storage/StorageManager$MountServiceBinderListener;->this$0:Landroid/os/storage/StorageManager;

    invoke-static {v2}, Landroid/os/storage/StorageManager;->access$000(Landroid/os/storage/StorageManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager$ListenerDelegate;

    invoke-virtual {v2, p1}, Landroid/os/storage/StorageManager$ListenerDelegate;->sendShareAvailabilityChanged(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
