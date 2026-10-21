.class Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/uceservice/ImsUceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UceServiceDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/internal/uce/uceservice/ImsUceManager;


# direct methods
.method private constructor <init>(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;->this$0:Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;Lcom/android/ims/internal/uce/uceservice/ImsUceManager$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;-><init>(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;->this$0:Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->access$102(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;Lcom/android/ims/internal/uce/uceservice/IUceService;)Lcom/android/ims/internal/uce/uceservice/IUceService;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;->this$0:Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->access$200(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;)Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Landroid/content/Intent;

    .line 16
    .line 17
    const-string v1, "com.android.ims.internal.uce.UCE_SERVICE_DOWN"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;->this$0:Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->access$300(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const-string v2, "android:phone_id"

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;->this$0:Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->access$200(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;)Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v2, Landroid/content/Intent;

    .line 40
    .line 41
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method
