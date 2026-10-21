.class Landroid/app/timezone/RulesManager$CallbackWrapper;
.super Landroid/app/timezone/ICallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/timezone/RulesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallbackWrapper"
.end annotation


# instance fields
.field final mCallback:Landroid/app/timezone/Callback;

.field final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/app/timezone/RulesManager;


# direct methods
.method public constructor <init>(Landroid/app/timezone/RulesManager;Landroid/content/Context;Landroid/app/timezone/Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/app/timezone/RulesManager$CallbackWrapper;->this$0:Landroid/app/timezone/RulesManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/timezone/ICallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Landroid/app/timezone/RulesManager$CallbackWrapper;->mCallback:Landroid/app/timezone/Callback;

    .line 7
    .line 8
    new-instance p1, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Landroid/app/timezone/RulesManager$CallbackWrapper;->mHandler:Landroid/os/Handler;

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic a(Landroid/app/timezone/RulesManager$CallbackWrapper;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/timezone/RulesManager$CallbackWrapper;->lambda$onFinished$0(I)V

    return-void
.end method

.method private synthetic lambda$onFinished$0(I)V
    .locals 1

    iget-object v0, p0, Landroid/app/timezone/RulesManager$CallbackWrapper;->mCallback:Landroid/app/timezone/Callback;

    invoke-virtual {v0, p1}, Landroid/app/timezone/Callback;->onFinished(I)V

    return-void
.end method


# virtual methods
.method public onFinished(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "mCallback.onFinished(status), status="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Landroid/app/timezone/RulesManager;->logDebug(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Landroid/app/timezone/RulesManager$CallbackWrapper;->mHandler:Landroid/os/Handler;

    .line 20
    .line 21
    new-instance v1, Landroid/app/timezone/a;

    .line 22
    .line 23
    invoke-direct {v1, p0, p1}, Landroid/app/timezone/a;-><init>(Landroid/app/timezone/RulesManager$CallbackWrapper;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method
