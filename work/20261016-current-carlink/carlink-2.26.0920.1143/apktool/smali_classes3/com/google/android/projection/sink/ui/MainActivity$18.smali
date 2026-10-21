.class Lcom/google/android/projection/sink/ui/MainActivity$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/ui/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/ui/MainActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/ui/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity$18;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/content/a;->a(Landroid/content/ServiceConnection;Landroid/content/ComponentName;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    check-cast p2, Lcom/google/android/projection/sink/embedded/service/BackgroundService$LocalBinder;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity$18;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 4
    .line 5
    invoke-virtual {p2}, Lcom/google/android/projection/sink/embedded/service/BackgroundService$LocalBinder;->getService()Lcom/google/android/projection/sink/embedded/service/BackgroundService;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    iput-object p2, p1, Lcom/google/android/projection/sink/ui/MainActivity;->mService:Lcom/google/android/projection/sink/embedded/service/BackgroundService;

    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity$18;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 12
    .line 13
    iget-object p2, p1, Lcom/google/android/projection/sink/ui/MainActivity;->mService:Lcom/google/android/projection/sink/embedded/service/BackgroundService;

    .line 14
    .line 15
    new-instance v0, Lcom/google/android/projection/sink/ui/MainActivity$BtListener;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lcom/google/android/projection/sink/ui/MainActivity$BtListener;-><init>(Lcom/google/android/projection/sink/ui/MainActivity;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0}, Lcom/google/android/projection/sink/embedded/service/BackgroundService;->setListener(Lcom/google/android/projection/sink/ui/AutoWirelessListener$IAutoWirelessListener;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity$18;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Lcom/google/android/projection/sink/ui/MainActivity;->mService:Lcom/google/android/projection/sink/embedded/service/BackgroundService;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p1, Lcom/google/android/projection/sink/ui/MainActivity;->btConnected:Z

    .line 8
    .line 9
    return-void
.end method
