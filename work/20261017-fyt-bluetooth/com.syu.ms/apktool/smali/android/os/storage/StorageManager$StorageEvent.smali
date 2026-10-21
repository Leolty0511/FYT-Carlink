.class Landroid/os/storage/StorageManager$StorageEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/StorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StorageEvent"
.end annotation


# static fields
.field public static final EVENT_OBB_STATE_CHANGED:I = 0x3

.field public static final EVENT_STORAGE_STATE_CHANGED:I = 0x2

.field public static final EVENT_UMS_CONNECTION_CHANGED:I = 0x1


# instance fields
.field private mMessage:Landroid/os/Message;

.field public final synthetic this$0:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>(Landroid/os/storage/StorageManager;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/os/storage/StorageManager$StorageEvent;->this$0:Landroid/os/storage/StorageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    iput-object p1, p0, Landroid/os/storage/StorageManager$StorageEvent;->mMessage:Landroid/os/Message;

    .line 3
    iput p2, p1, Landroid/os/Message;->what:I

    .line 4
    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getMessage()Landroid/os/Message;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/os/storage/StorageManager$StorageEvent;->mMessage:Landroid/os/Message;

    return-object v0
.end method
