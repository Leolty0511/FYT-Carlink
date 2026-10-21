.class Landroid/os/ParcelFileDescriptor$ListenerBridge$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/ParcelFileDescriptor$ListenerBridge;-><init>(Ljava/io/FileDescriptor;Landroid/os/Looper;Landroid/os/ParcelFileDescriptor$OnCloseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/os/ParcelFileDescriptor$ListenerBridge;

.field public final synthetic val$listener:Landroid/os/ParcelFileDescriptor$OnCloseListener;


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor$ListenerBridge;Landroid/os/Looper;Landroid/os/ParcelFileDescriptor$OnCloseListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/os/ParcelFileDescriptor$ListenerBridge$1;->this$0:Landroid/os/ParcelFileDescriptor$ListenerBridge;

    iput-object p3, p0, Landroid/os/ParcelFileDescriptor$ListenerBridge$1;->val$listener:Landroid/os/ParcelFileDescriptor$OnCloseListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/ParcelFileDescriptor$Status;

    .line 2
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor$ListenerBridge$1;->val$listener:Landroid/os/ParcelFileDescriptor$OnCloseListener;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor$Status;->asIOException()Ljava/io/IOException;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Landroid/os/ParcelFileDescriptor$OnCloseListener;->onClose(Ljava/io/IOException;)V

    return-void
.end method
