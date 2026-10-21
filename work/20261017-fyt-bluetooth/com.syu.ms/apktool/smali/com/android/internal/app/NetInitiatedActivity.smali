.class public Lcom/android/internal/app/NetInitiatedActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Landroid/content/BroadcastReceiver;

.field public final h:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->c:I

    .line 3
    iput v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->d:I

    .line 4
    iput v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->e:I

    const/4 v0, 0x6

    .line 5
    iput v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->f:I

    .line 6
    new-instance v0, Lcom/android/internal/app/NetInitiatedActivity$a;

    invoke-direct {v0, p0}, Lcom/android/internal/app/NetInitiatedActivity$a;-><init>(Lcom/android/internal/app/NetInitiatedActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->g:Landroid/content/BroadcastReceiver;

    .line 7
    new-instance v0, Lcom/android/internal/app/NetInitiatedActivity$b;

    invoke-direct {v0, p0}, Lcom/android/internal/app/NetInitiatedActivity$b;-><init>(Lcom/android/internal/app/NetInitiatedActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->h:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic b(Lcom/android/internal/app/NetInitiatedActivity;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/app/NetInitiatedActivity;->f(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/internal/app/NetInitiatedActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/internal/app/NetInitiatedActivity;->c:I

    return p0
.end method

.method public static synthetic d(Lcom/android/internal/app/NetInitiatedActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/internal/app/NetInitiatedActivity;->e:I

    return p0
.end method

.method public static synthetic e(Lcom/android/internal/app/NetInitiatedActivity;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/app/NetInitiatedActivity;->g(I)V

    return-void
.end method


# virtual methods
.method public final f(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "notif_id"

    const/4 v1, -0x1

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2
    iput v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->c:I

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleNIVerify action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetInitiatedActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final g(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendUserResponse, response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetInitiatedActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "location"

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 3
    iget v1, p0, Lcom/android/internal/app/NetInitiatedActivity;->c:I

    invoke-virtual {v0, v1, p1}, Landroid/location/LocationManager;->sendNiResponse(II)Z

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/internal/app/NetInitiatedActivity;->g(I)V

    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    const/4 p2, 0x2

    .line 2
    invoke-virtual {p0, p2}, Lcom/android/internal/app/NetInitiatedActivity;->g(I)V

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 4
    iput p1, p0, Lcom/android/internal/app/NetInitiatedActivity;->c:I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->b:Lcom/android/internal/app/AlertController$b;

    .line 4
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10802d8

    .line 5
    iput v2, v0, Lcom/android/internal/app/AlertController$b;->c:I

    const-string/jumbo v2, "title"

    .line 6
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$b;->f:Ljava/lang/CharSequence;

    const-string v2, "message"

    .line 7
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$b;->h:Ljava/lang/CharSequence;

    const v2, 0x10404e3

    .line 8
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$b;->i:Ljava/lang/CharSequence;

    .line 9
    iput-object p0, v0, Lcom/android/internal/app/AlertController$b;->j:Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x10404e4

    .line 10
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$b;->k:Ljava/lang/CharSequence;

    .line 11
    iput-object p0, v0, Lcom/android/internal/app/AlertController$b;->l:Landroid/content/DialogInterface$OnClickListener;

    const-string v0, "notif_id"

    const/4 v1, -0x1

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->c:I

    .line 13
    iget v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->f:I

    const-string/jumbo v1, "timeout"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->d:I

    const-string v0, "default_resp"

    const/4 v1, 0x1

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/app/NetInitiatedActivity;->e:I

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate() : notificationId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->c:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " timeout: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->d:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " default_response:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->e:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetInitiatedActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object p1, p0, Lcom/android/internal/app/NetInitiatedActivity;->h:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/NetInitiatedActivity;->d:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 17
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->a()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "NetInitiatedActivity"

    const-string v1, "onPause"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "NetInitiatedActivity"

    const-string v1, "onResume"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->g:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.NETWORK_INITIATED_VERIFY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
