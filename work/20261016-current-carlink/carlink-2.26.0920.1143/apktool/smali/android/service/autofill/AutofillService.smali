.class public abstract Landroid/service/autofill/AutofillService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final MSG_CONNECT:I = 0x1

.field private static final MSG_DISCONNECT:I = 0x2

.field private static final MSG_ON_FILL_REQUEST:I = 0x3

.field private static final MSG_ON_SAVE_REQUEST:I = 0x4

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.autofill.AutofillService"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.autofill"

.field private static final TAG:Ljava/lang/String; = "AutofillService"


# instance fields
.field private final mHandlerCallback:Lcom/android/internal/os/HandlerCaller$Callback;

.field private mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

.field private final mInterface:Landroid/service/autofill/IAutoFillService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/service/autofill/AutofillService$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroid/service/autofill/AutofillService$1;-><init>(Landroid/service/autofill/AutofillService;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/service/autofill/AutofillService;->mInterface:Landroid/service/autofill/IAutoFillService;

    .line 10
    .line 11
    new-instance v0, Landroid/service/autofill/a;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Landroid/service/autofill/a;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/service/autofill/AutofillService;->mHandlerCallback:Lcom/android/internal/os/HandlerCaller$Callback;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a(Landroid/service/autofill/AutofillService;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/autofill/AutofillService;->lambda$new$0(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$000(Landroid/service/autofill/AutofillService;)Lcom/android/internal/os/HandlerCaller;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/AutofillService;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_3

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "MyCallbacks received invalid message type: "

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v0, "AutofillService"

    .line 30
    .line 31
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 38
    .line 39
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Landroid/service/autofill/SaveRequest;

    .line 42
    .line 43
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v1, Landroid/service/autofill/ISaveCallback;

    .line 46
    .line 47
    new-instance v2, Landroid/service/autofill/SaveCallback;

    .line 48
    .line 49
    invoke-direct {v2, v1}, Landroid/service/autofill/SaveCallback;-><init>(Landroid/service/autofill/ISaveCallback;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v0, v2}, Landroid/service/autofill/AutofillService;->onSaveRequest(Landroid/service/autofill/SaveRequest;Landroid/service/autofill/SaveCallback;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 62
    .line 63
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v0, Landroid/service/autofill/FillRequest;

    .line 66
    .line 67
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v1, Landroid/os/CancellationSignal;

    .line 70
    .line 71
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v2, Landroid/service/autofill/IFillCallback;

    .line 74
    .line 75
    new-instance v3, Landroid/service/autofill/FillCallback;

    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/service/autofill/FillRequest;->getId()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    invoke-direct {v3, v2, v4}, Landroid/service/autofill/FillCallback;-><init>(Landroid/service/autofill/IFillCallback;I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v0, v1, v3}, Landroid/service/autofill/AutofillService;->onFillRequest(Landroid/service/autofill/FillRequest;Landroid/os/CancellationSignal;Landroid/service/autofill/FillCallback;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {p0}, Landroid/service/autofill/AutofillService;->onDisconnected()V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    invoke-virtual {p0}, Landroid/service/autofill/AutofillService;->onConnected()V

    .line 96
    .line 97
    .line 98
    :goto_0
    return-void
.end method


# virtual methods
.method public final getFillEventHistory()Landroid/service/autofill/FillEventHistory;
    .locals 1

    .line 1
    const-class v0, Landroid/view/autofill/AutofillManager;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    :cond_0
    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->getFillEventHistory()Landroid/service/autofill/FillEventHistory;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.service.autofill.AutofillService"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Landroid/service/autofill/AutofillService;->mInterface:Landroid/service/autofill/IAutoFillService;

    .line 14
    .line 15
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, "Tried to bind to wrong intent: "

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v0, "AutofillService"

    .line 35
    .line 36
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    return-object p1
.end method

.method public onConnected()V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p0, Landroid/service/autofill/AutofillService;->mHandlerCallback:Lcom/android/internal/os/HandlerCaller$Callback;

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroid/service/autofill/AutofillService;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    .line 18
    .line 19
    return-void
.end method

.method public onDisconnected()V
    .locals 0

    return-void
.end method

.method public abstract onFillRequest(Landroid/service/autofill/FillRequest;Landroid/os/CancellationSignal;Landroid/service/autofill/FillCallback;)V
.end method

.method public abstract onSaveRequest(Landroid/service/autofill/SaveRequest;Landroid/service/autofill/SaveCallback;)V
.end method
