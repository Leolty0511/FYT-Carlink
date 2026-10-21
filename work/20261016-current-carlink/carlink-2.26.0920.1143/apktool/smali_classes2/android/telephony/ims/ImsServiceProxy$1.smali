.class Landroid/telephony/ims/ImsServiceProxy$1;
.super Lcom/android/ims/internal/IImsServiceFeatureListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/ims/ImsServiceProxy;


# direct methods
.method public constructor <init>(Landroid/telephony/ims/ImsServiceProxy;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/ImsServiceProxy$1;->this$0:Landroid/telephony/ims/ImsServiceProxy;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsServiceFeatureListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public imsFeatureCreated(II)V
    .locals 4

    .line 1
    const-string v0, "Feature enabled on slotId: "

    .line 2
    .line 3
    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxy$1;->this$0:Landroid/telephony/ims/ImsServiceProxy;

    .line 4
    .line 5
    invoke-static {v1}, Landroid/telephony/ims/ImsServiceProxy;->access$000(Landroid/telephony/ims/ImsServiceProxy;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/ImsServiceProxy$1;->this$0:Landroid/telephony/ims/ImsServiceProxy;

    .line 11
    .line 12
    invoke-static {v2}, Landroid/telephony/ims/ImsServiceProxy;->access$100(Landroid/telephony/ims/ImsServiceProxy;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Landroid/telephony/ims/ImsServiceProxy$1;->this$0:Landroid/telephony/ims/ImsServiceProxy;

    .line 19
    .line 20
    iget v3, v2, Landroid/telephony/ims/ImsServiceProxyCompat;->mSlotId:I

    .line 21
    .line 22
    if-ne v3, p1, :cond_0

    .line 23
    .line 24
    invoke-static {v2}, Landroid/telephony/ims/ImsServiceProxy;->access$200(Landroid/telephony/ims/ImsServiceProxy;)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-ne p2, v2, :cond_0

    .line 29
    .line 30
    iget-object v2, p0, Landroid/telephony/ims/ImsServiceProxy$1;->this$0:Landroid/telephony/ims/ImsServiceProxy;

    .line 31
    .line 32
    iget-object v2, v2, Landroid/telephony/ims/ImsServiceProxy;->LOG_TAG:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p1, " for feature: "

    .line 43
    .line 44
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Landroid/telephony/ims/ImsServiceProxy$1;->this$0:Landroid/telephony/ims/ImsServiceProxy;

    .line 58
    .line 59
    const/4 p2, 0x1

    .line 60
    invoke-static {p1, p2}, Landroid/telephony/ims/ImsServiceProxy;->access$102(Landroid/telephony/ims/ImsServiceProxy;Z)Z

    .line 61
    .line 62
    .line 63
    :cond_0
    monitor-exit v1

    .line 64
    return-void

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw p1
.end method

.method public imsFeatureRemoved(II)V
    .locals 4

    .line 1
    const-string v0, "Feature disabled on slotId: "

    .line 2
    .line 3
    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxy$1;->this$0:Landroid/telephony/ims/ImsServiceProxy;

    .line 4
    .line 5
    invoke-static {v1}, Landroid/telephony/ims/ImsServiceProxy;->access$000(Landroid/telephony/ims/ImsServiceProxy;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/ImsServiceProxy$1;->this$0:Landroid/telephony/ims/ImsServiceProxy;

    .line 11
    .line 12
    invoke-static {v2}, Landroid/telephony/ims/ImsServiceProxy;->access$100(Landroid/telephony/ims/ImsServiceProxy;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Landroid/telephony/ims/ImsServiceProxy$1;->this$0:Landroid/telephony/ims/ImsServiceProxy;

    .line 19
    .line 20
    iget v3, v2, Landroid/telephony/ims/ImsServiceProxyCompat;->mSlotId:I

    .line 21
    .line 22
    if-ne v3, p1, :cond_0

    .line 23
    .line 24
    invoke-static {v2}, Landroid/telephony/ims/ImsServiceProxy;->access$200(Landroid/telephony/ims/ImsServiceProxy;)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-ne p2, v2, :cond_0

    .line 29
    .line 30
    iget-object v2, p0, Landroid/telephony/ims/ImsServiceProxy$1;->this$0:Landroid/telephony/ims/ImsServiceProxy;

    .line 31
    .line 32
    iget-object v2, v2, Landroid/telephony/ims/ImsServiceProxy;->LOG_TAG:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p1, " for feature: "

    .line 43
    .line 44
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Landroid/telephony/ims/ImsServiceProxy$1;->this$0:Landroid/telephony/ims/ImsServiceProxy;

    .line 58
    .line 59
    const/4 p2, 0x0

    .line 60
    invoke-static {p1, p2}, Landroid/telephony/ims/ImsServiceProxy;->access$102(Landroid/telephony/ims/ImsServiceProxy;Z)Z

    .line 61
    .line 62
    .line 63
    :cond_0
    monitor-exit v1

    .line 64
    return-void

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw p1
.end method

.method public imsStatusChanged(III)V
    .locals 4

    .line 1
    const-string v0, "imsStatusChanged: slot: "

    .line 2
    .line 3
    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxy$1;->this$0:Landroid/telephony/ims/ImsServiceProxy;

    .line 4
    .line 5
    invoke-static {v1}, Landroid/telephony/ims/ImsServiceProxy;->access$000(Landroid/telephony/ims/ImsServiceProxy;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/ImsServiceProxy$1;->this$0:Landroid/telephony/ims/ImsServiceProxy;

    .line 11
    .line 12
    iget-object v2, v2, Landroid/telephony/ims/ImsServiceProxy;->LOG_TAG:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, " feature: "

    .line 23
    .line 24
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, " status: "

    .line 31
    .line 32
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy$1;->this$0:Landroid/telephony/ims/ImsServiceProxy;

    .line 46
    .line 47
    iget v2, v0, Landroid/telephony/ims/ImsServiceProxyCompat;->mSlotId:I

    .line 48
    .line 49
    if-ne v2, p1, :cond_0

    .line 50
    .line 51
    invoke-static {v0}, Landroid/telephony/ims/ImsServiceProxy;->access$200(Landroid/telephony/ims/ImsServiceProxy;)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-ne p2, p1, :cond_0

    .line 56
    .line 57
    iget-object p1, p0, Landroid/telephony/ims/ImsServiceProxy$1;->this$0:Landroid/telephony/ims/ImsServiceProxy;

    .line 58
    .line 59
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-static {p1, p2}, Landroid/telephony/ims/ImsServiceProxy;->access$302(Landroid/telephony/ims/ImsServiceProxy;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Landroid/telephony/ims/ImsServiceProxy$1;->this$0:Landroid/telephony/ims/ImsServiceProxy;

    .line 67
    .line 68
    invoke-static {p1}, Landroid/telephony/ims/ImsServiceProxy;->access$400(Landroid/telephony/ims/ImsServiceProxy;)Landroid/telephony/ims/ImsServiceProxy$INotifyStatusChanged;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-eqz p1, :cond_0

    .line 73
    .line 74
    iget-object p1, p0, Landroid/telephony/ims/ImsServiceProxy$1;->this$0:Landroid/telephony/ims/ImsServiceProxy;

    .line 75
    .line 76
    invoke-static {p1}, Landroid/telephony/ims/ImsServiceProxy;->access$400(Landroid/telephony/ims/ImsServiceProxy;)Landroid/telephony/ims/ImsServiceProxy$INotifyStatusChanged;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-interface {p1}, Landroid/telephony/ims/ImsServiceProxy$INotifyStatusChanged;->notifyStatusChanged()V

    .line 81
    .line 82
    .line 83
    :cond_0
    monitor-exit v1

    .line 84
    return-void

    .line 85
    :catchall_0
    move-exception p1

    .line 86
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    throw p1
.end method
