.class public Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/VisualVoicemailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VisualVoicemailTask"
.end annotation


# instance fields
.field private final mReplyTo:Landroid/os/Messenger;

.field private final mTaskId:I


# direct methods
.method private constructor <init>(Landroid/os/Messenger;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p2, p0, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;->mTaskId:I

    .line 4
    iput-object p1, p0, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;->mReplyTo:Landroid/os/Messenger;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Messenger;ILandroid/telephony/VisualVoicemailService$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;-><init>(Landroid/os/Messenger;I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget v0, p0, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;->mTaskId:I

    .line 8
    .line 9
    check-cast p1, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;

    .line 10
    .line 11
    iget p1, p1, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;->mTaskId:I

    .line 12
    .line 13
    if-ne v0, p1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    :cond_1
    return v1
.end method

.method public final finish()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x4

    .line 6
    :try_start_0
    iput v1, v0, Landroid/os/Message;->what:I

    .line 7
    .line 8
    iget v1, p0, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;->mTaskId:I

    .line 9
    .line 10
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 11
    .line 12
    iget-object v1, p0, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;->mReplyTo:Landroid/os/Messenger;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    const-string v0, "VvmService"

    .line 19
    .line 20
    const-string v1, "Cannot send MSG_TASK_ENDED, remote handler no longer exist"

    .line 21
    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;->mTaskId:I

    return v0
.end method
