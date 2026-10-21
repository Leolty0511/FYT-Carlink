.class Landroid/net/ConnectivityManager$2;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ConnectivityManager;

.field final synthetic val$callback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/net/ConnectivityManager$OnStartTetheringCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/net/ConnectivityManager$2;->this$0:Landroid/net/ConnectivityManager;

    iput-object p3, p0, Landroid/net/ConnectivityManager$2;->val$callback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

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
    iget-object p1, p0, Landroid/net/ConnectivityManager$2;->val$callback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;->onTetheringStarted()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Landroid/net/ConnectivityManager$2;->val$callback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;->onTetheringFailed()V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method
