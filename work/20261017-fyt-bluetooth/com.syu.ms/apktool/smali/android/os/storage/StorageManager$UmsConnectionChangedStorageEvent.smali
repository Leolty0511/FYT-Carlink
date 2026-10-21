.class Landroid/os/storage/StorageManager$UmsConnectionChangedStorageEvent;
.super Landroid/os/storage/StorageManager$StorageEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/StorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UmsConnectionChangedStorageEvent"
.end annotation


# instance fields
.field public available:Z

.field public final synthetic this$0:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>(Landroid/os/storage/StorageManager;Z)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/os/storage/StorageManager$UmsConnectionChangedStorageEvent;->this$0:Landroid/os/storage/StorageManager;

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/os/storage/StorageManager$StorageEvent;-><init>(Landroid/os/storage/StorageManager;I)V

    .line 3
    iput-boolean p2, p0, Landroid/os/storage/StorageManager$UmsConnectionChangedStorageEvent;->available:Z

    return-void
.end method
