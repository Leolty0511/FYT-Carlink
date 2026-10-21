.class final Landroid/telecom/CallScreeningService$CallScreeningBinder;
.super Lcom/android/internal/telecom/ICallScreeningService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallScreeningService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CallScreeningBinder"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/CallScreeningService;


# direct methods
.method private constructor <init>(Landroid/telecom/CallScreeningService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/telecom/CallScreeningService$CallScreeningBinder;->this$0:Landroid/telecom/CallScreeningService;

    invoke-direct {p0}, Lcom/android/internal/telecom/ICallScreeningService$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/telecom/CallScreeningService;Landroid/telecom/CallScreeningService$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/telecom/CallScreeningService$CallScreeningBinder;-><init>(Landroid/telecom/CallScreeningService;)V

    return-void
.end method


# virtual methods
.method public screenCall(Lcom/android/internal/telecom/ICallScreeningAdapter;Landroid/telecom/ParcelableCall;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v1, "screenCall"

    .line 5
    .line 6
    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object p1, p0, Landroid/telecom/CallScreeningService$CallScreeningBinder;->this$0:Landroid/telecom/CallScreeningService;

    .line 18
    .line 19
    invoke-static {p1}, Landroid/telecom/CallScreeningService;->access$100(Landroid/telecom/CallScreeningService;)Landroid/os/Handler;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 p2, 0x1

    .line 24
    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 29
    .line 30
    .line 31
    return-void
.end method
