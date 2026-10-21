.class Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$1;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->startTethering(Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$OnStartTetheringCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;

.field final synthetic val$callback:Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$OnStartTetheringCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;Landroid/os/Handler;Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$OnStartTetheringCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$1;->this$0:Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;

    iput-object p3, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$1;->val$callback:Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$OnStartTetheringCallback;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$1;->val$callback:Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$OnStartTetheringCallback;

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$OnStartTetheringCallback;->onTetheringStarted()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$1;->val$callback:Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$OnStartTetheringCallback;

    .line 10
    .line 11
    invoke-interface {p2, p1}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$OnStartTetheringCallback;->onTetheringFailed(I)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method
