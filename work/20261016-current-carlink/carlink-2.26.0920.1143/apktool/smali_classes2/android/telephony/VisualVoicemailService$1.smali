.class Landroid/telephony/VisualVoicemailService$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/VisualVoicemailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/VisualVoicemailService;


# direct methods
.method public constructor <init>(Landroid/telephony/VisualVoicemailService;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/VisualVoicemailService$1;->this$0:Landroid/telephony/VisualVoicemailService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "data_phone_account_handle"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 12
    .line 13
    new-instance v1, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;

    .line 14
    .line 15
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 16
    .line 17
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-direct {v1, v2, v3, v4}, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;-><init>(Landroid/os/Messenger;ILandroid/telephony/VisualVoicemailService$1;)V

    .line 21
    .line 22
    .line 23
    iget v2, p1, Landroid/os/Message;->what:I

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    if-eq v2, v3, :cond_3

    .line 27
    .line 28
    const/4 v3, 0x2

    .line 29
    if-eq v2, v3, :cond_2

    .line 30
    .line 31
    const/4 v3, 0x3

    .line 32
    if-eq v2, v3, :cond_1

    .line 33
    .line 34
    const/4 v0, 0x5

    .line 35
    if-eq v2, v0, :cond_0

    .line 36
    .line 37
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Landroid/telephony/VisualVoicemailService$1;->this$0:Landroid/telephony/VisualVoicemailService;

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroid/telephony/VisualVoicemailService;->onStopped(Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object p1, p0, Landroid/telephony/VisualVoicemailService$1;->this$0:Landroid/telephony/VisualVoicemailService;

    .line 48
    .line 49
    invoke-virtual {p1, v1, v0}, Landroid/telephony/VisualVoicemailService;->onSimRemoved(Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;Landroid/telecom/PhoneAccountHandle;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string v0, "data_sms"

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Landroid/telephony/VisualVoicemailSms;

    .line 64
    .line 65
    iget-object v0, p0, Landroid/telephony/VisualVoicemailService$1;->this$0:Landroid/telephony/VisualVoicemailService;

    .line 66
    .line 67
    invoke-virtual {v0, v1, p1}, Landroid/telephony/VisualVoicemailService;->onSmsReceived(Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;Landroid/telephony/VisualVoicemailSms;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    iget-object p1, p0, Landroid/telephony/VisualVoicemailService$1;->this$0:Landroid/telephony/VisualVoicemailService;

    .line 72
    .line 73
    invoke-virtual {p1, v1, v0}, Landroid/telephony/VisualVoicemailService;->onCellServiceConnected(Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;Landroid/telecom/PhoneAccountHandle;)V

    .line 74
    .line 75
    .line 76
    :goto_0
    return-void
.end method
