.class Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;
.super Landroid/telephony/ims/stub/ImsCallSessionListenerImplBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/ImsCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IImsCallSessionListenerProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/internal/ImsCallSession;


# direct methods
.method private constructor <init>(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsCallSessionListenerImplBase;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/internal/ImsCallSession$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;-><init>(Lcom/android/ims/internal/ImsCallSession;)V

    return-void
.end method


# virtual methods
.method public callSessionConferenceExtendFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 16
    .line 17
    invoke-virtual {p1, v0, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionConferenceExtendFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 16
    .line 17
    new-instance v1, Lcom/android/ims/internal/ImsCallSession;

    .line 18
    .line 19
    invoke-direct {v1, p2}, Lcom/android/ims/internal/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0, v1, p3}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionConferenceExtendReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 16
    .line 17
    new-instance v1, Lcom/android/ims/internal/ImsCallSession;

    .line 18
    .line 19
    invoke-direct {v1, p2}, Lcom/android/ims/internal/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0, v1, p3}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionConferenceExtended(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public callSessionConferenceStateUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsConferenceState;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 16
    .line 17
    invoke-virtual {p1, v0, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionConferenceStateUpdated(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsConferenceState;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public callSessionHandover(Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 16
    .line 17
    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionHandover(Lcom/android/ims/internal/ImsCallSession;IILcom/android/ims/ImsReasonInfo;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public callSessionHandoverFailed(Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 16
    .line 17
    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionHandoverFailed(Lcom/android/ims/internal/ImsCallSession;IILcom/android/ims/ImsReasonInfo;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public callSessionHeld(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 16
    .line 17
    invoke-virtual {p1, v0, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionHeld(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public callSessionHoldFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 16
    .line 17
    invoke-virtual {p1, v0, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionHoldFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public callSessionHoldReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 16
    .line 17
    invoke-virtual {p1, v0, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionHoldReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public callSessionInviteParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionInviteParticipantsRequestDelivered(Lcom/android/ims/internal/ImsCallSession;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public callSessionInviteParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 16
    .line 17
    invoke-virtual {p1, v0, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionInviteParticipantsRequestFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public callSessionMayHandover(Lcom/android/ims/internal/IImsCallSession;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 16
    .line 17
    invoke-virtual {p1, v0, p2, p3}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionMayHandover(Lcom/android/ims/internal/ImsCallSession;II)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 12
    .line 13
    :try_start_0
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$200(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/IImsCallSession;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    new-instance v1, Lcom/android/ims/internal/ImsCallSession;

    .line 32
    .line 33
    invoke-direct {v1, p1}, Lcom/android/ims/internal/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    move-object v0, v1

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    const-string p1, "ImsCallSession"

    .line 39
    .line 40
    const-string v1, "callSessionMergeComplete: exception for getCallId!"

    .line 41
    .line 42
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1, v0}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionMergeComplete(Lcom/android/ims/internal/ImsCallSession;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 56
    .line 57
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const/4 v0, 0x0

    .line 62
    invoke-virtual {p1, v0}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionMergeComplete(Lcom/android/ims/internal/ImsCallSession;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_1
    return-void
.end method

.method public callSessionMergeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 16
    .line 17
    invoke-virtual {p1, v0, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionMergeFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 0

    .line 1
    const-string p1, "ImsCallSession"

    .line 2
    .line 3
    const-string p2, "callSessionMergeStarted"

    .line 4
    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public callSessionMultipartyStateChanged(Lcom/android/ims/internal/IImsCallSession;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 16
    .line 17
    invoke-virtual {p1, v0, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionMultipartyStateChanged(Lcom/android/ims/internal/ImsCallSession;Z)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public callSessionProgressing(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 16
    .line 17
    invoke-virtual {p1, v0, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionProgressing(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public callSessionRemoveParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionRemoveParticipantsRequestDelivered(Lcom/android/ims/internal/ImsCallSession;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public callSessionRemoveParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 16
    .line 17
    invoke-virtual {p1, v0, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionRemoveParticipantsRequestFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public callSessionResumeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 16
    .line 17
    invoke-virtual {p1, v0, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionResumeFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public callSessionResumeReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 16
    .line 17
    invoke-virtual {p1, v0, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionResumeReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public callSessionResumed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 16
    .line 17
    invoke-virtual {p1, v0, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionResumed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public callSessionRttMessageReceived(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionRttMessageReceived(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public callSessionRttModifyRequestReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 16
    .line 17
    invoke-virtual {p1, v0, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionRttModifyRequestReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public callSessionRttModifyResponseReceived(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionRttModifyResponseReceived(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public callSessionStartFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 16
    .line 17
    invoke-virtual {p1, v0, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionStartFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public callSessionStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 16
    .line 17
    invoke-virtual {p1, v0, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionStarted(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public callSessionSuppServiceReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsSuppServiceNotification;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 16
    .line 17
    invoke-virtual {p1, v0, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionSuppServiceReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsSuppServiceNotification;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public callSessionTerminated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 16
    .line 17
    invoke-virtual {p1, v0, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionTerminated(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public callSessionTtyModeReceived(Lcom/android/ims/internal/IImsCallSession;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 16
    .line 17
    invoke-virtual {p1, v0, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionTtyModeReceived(Lcom/android/ims/internal/ImsCallSession;I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public callSessionUpdateFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 16
    .line 17
    invoke-virtual {p1, v0, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionUpdateFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public callSessionUpdateReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 16
    .line 17
    invoke-virtual {p1, v0, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionUpdateReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public callSessionUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 16
    .line 17
    invoke-virtual {p1, v0, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionUpdated(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public callSessionUssdMessageReceived(Lcom/android/ims/internal/IImsCallSession;ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 16
    .line 17
    invoke-virtual {p1, v0, p2, p3}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionUssdMessageReceived(Lcom/android/ims/internal/ImsCallSession;ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
