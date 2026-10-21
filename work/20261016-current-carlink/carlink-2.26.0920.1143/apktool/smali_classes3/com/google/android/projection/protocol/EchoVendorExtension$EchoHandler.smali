.class Lcom/google/android/projection/protocol/EchoVendorExtension$EchoHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/protocol/EchoVendorExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EchoHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/protocol/EchoVendorExtension;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/protocol/EchoVendorExtension;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/projection/protocol/EchoVendorExtension$EchoHandler;->this$0:Lcom/google/android/projection/protocol/EchoVendorExtension;

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
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, [B

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/projection/protocol/EchoVendorExtension$EchoHandler;->this$0:Lcom/google/android/projection/protocol/EchoVendorExtension;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/google/android/projection/protocol/VendorExtensionBase;->sendData([B)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method
