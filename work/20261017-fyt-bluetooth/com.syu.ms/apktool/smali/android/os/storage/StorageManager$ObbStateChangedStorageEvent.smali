.class Landroid/os/storage/StorageManager$ObbStateChangedStorageEvent;
.super Landroid/os/storage/StorageManager$StorageEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/StorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ObbStateChangedStorageEvent"
.end annotation


# instance fields
.field public final path:Ljava/lang/String;

.field public final state:I

.field public final synthetic this$0:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>(Landroid/os/storage/StorageManager;Ljava/lang/String;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/os/storage/StorageManager$ObbStateChangedStorageEvent;->this$0:Landroid/os/storage/StorageManager;

    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/os/storage/StorageManager$StorageEvent;-><init>(Landroid/os/storage/StorageManager;I)V

    .line 3
    iput-object p2, p0, Landroid/os/storage/StorageManager$ObbStateChangedStorageEvent;->path:Ljava/lang/String;

    .line 4
    iput p3, p0, Landroid/os/storage/StorageManager$ObbStateChangedStorageEvent;->state:I

    return-void
.end method
