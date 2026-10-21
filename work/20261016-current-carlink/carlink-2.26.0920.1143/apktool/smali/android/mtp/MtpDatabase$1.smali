.class Landroid/mtp/MtpDatabase$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/mtp/MtpDatabase;


# direct methods
.method public constructor <init>(Landroid/mtp/MtpDatabase;)V
    .locals 0

    iput-object p1, p0, Landroid/mtp/MtpDatabase$1;->this$0:Landroid/mtp/MtpDatabase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Landroid/mtp/MtpDatabase$1;->this$0:Landroid/mtp/MtpDatabase;

    .line 14
    .line 15
    const-string/jumbo v0, "scale"

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {p1, v0}, Landroid/mtp/MtpDatabase;->access$002(Landroid/mtp/MtpDatabase;I)I

    .line 24
    .line 25
    .line 26
    const-string/jumbo p1, "level"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iget-object p2, p0, Landroid/mtp/MtpDatabase$1;->this$0:Landroid/mtp/MtpDatabase;

    .line 34
    .line 35
    invoke-static {p2}, Landroid/mtp/MtpDatabase;->access$100(Landroid/mtp/MtpDatabase;)I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eq p1, p2, :cond_1

    .line 40
    .line 41
    iget-object p2, p0, Landroid/mtp/MtpDatabase$1;->this$0:Landroid/mtp/MtpDatabase;

    .line 42
    .line 43
    invoke-static {p2, p1}, Landroid/mtp/MtpDatabase;->access$102(Landroid/mtp/MtpDatabase;I)I

    .line 44
    .line 45
    .line 46
    const-class p1, Landroid/mtp/MtpDatabase;

    .line 47
    .line 48
    monitor-enter p1

    .line 49
    :try_start_0
    iget-object p2, p0, Landroid/mtp/MtpDatabase$1;->this$0:Landroid/mtp/MtpDatabase;

    .line 50
    .line 51
    invoke-static {p2}, Landroid/mtp/MtpDatabase;->access$200(Landroid/mtp/MtpDatabase;)Landroid/mtp/MtpServer;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    if-eqz p2, :cond_0

    .line 56
    .line 57
    iget-object p2, p0, Landroid/mtp/MtpDatabase$1;->this$0:Landroid/mtp/MtpDatabase;

    .line 58
    .line 59
    invoke-static {p2}, Landroid/mtp/MtpDatabase;->access$200(Landroid/mtp/MtpDatabase;)Landroid/mtp/MtpServer;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    const/16 v0, 0x5001

    .line 64
    .line 65
    invoke-virtual {p2, v0}, Landroid/mtp/MtpServer;->sendDevicePropertyChanged(I)V

    .line 66
    .line 67
    .line 68
    :cond_0
    monitor-exit p1

    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p2

    .line 71
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    throw p2

    .line 73
    :cond_1
    :goto_0
    return-void
.end method
