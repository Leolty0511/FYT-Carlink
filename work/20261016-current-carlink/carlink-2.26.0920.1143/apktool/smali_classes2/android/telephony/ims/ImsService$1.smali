.class Landroid/telephony/ims/ImsService$1;
.super Lcom/android/ims/internal/IImsServiceController$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/ims/ImsService;


# direct methods
.method public constructor <init>(Landroid/telephony/ims/ImsService;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsServiceController$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 2
    .line 3
    const-string v1, "addRegistrationListener"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/telephony/ims/ImsService;->access$400(Landroid/telephony/ims/ImsService;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/telephony/ims/ImsService;->access$000(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 16
    .line 17
    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->access$300(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1, p3}, Landroid/telephony/ims/feature/MMTelFeature;->addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p1
.end method

.method public createCallProfile(IIIII)Lcom/android/ims/ImsCallProfile;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 2
    .line 3
    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    .line 4
    .line 5
    const-string v2, "createCallProfile"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 11
    .line 12
    invoke-static {v0}, Landroid/telephony/ims/ImsService;->access$000(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 18
    .line 19
    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->access$300(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1, p3, p4, p5}, Landroid/telephony/ims/feature/MMTelFeature;->createCallProfile(III)Lcom/android/ims/ImsCallProfile;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    monitor-exit v0

    .line 30
    return-object p1

    .line 31
    :cond_0
    monitor-exit v0

    .line 32
    const/4 p1, 0x0

    .line 33
    return-object p1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p1
.end method

.method public createCallSession(IIILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 2
    .line 3
    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    .line 4
    .line 5
    const-string v2, "createCallSession"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 11
    .line 12
    invoke-static {v0}, Landroid/telephony/ims/ImsService;->access$000(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 18
    .line 19
    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->access$300(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1, p3, p4, p5}, Landroid/telephony/ims/feature/MMTelFeature;->createCallSession(ILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    monitor-exit v0

    .line 30
    return-object p1

    .line 31
    :cond_0
    monitor-exit v0

    .line 32
    const/4 p1, 0x0

    .line 33
    return-object p1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p1
.end method

.method public createImsFeature(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/telephony/ims/ImsService;->access$000(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 9
    .line 10
    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    .line 11
    .line 12
    const-string v3, "createImsFeature"

    .line 13
    .line 14
    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 18
    .line 19
    invoke-static {v1, p1, p2, p3}, Landroid/telephony/ims/ImsService;->access$100(Landroid/telephony/ims/ImsService;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 20
    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p1
.end method

.method public endSession(III)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/telephony/ims/ImsService;->access$000(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 9
    .line 10
    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    .line 11
    .line 12
    const-string v3, "endSession"

    .line 13
    .line 14
    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 18
    .line 19
    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->access$300(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1, p3}, Landroid/telephony/ims/feature/MMTelFeature;->endSession(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p1
.end method

.method public getConfigInterface(II)Lcom/android/ims/internal/IImsConfig;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 2
    .line 3
    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    .line 4
    .line 5
    const-string v2, "getConfigInterface"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 11
    .line 12
    invoke-static {v0}, Landroid/telephony/ims/ImsService;->access$000(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 18
    .line 19
    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->access$300(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/telephony/ims/feature/MMTelFeature;->getConfigInterface()Lcom/android/ims/internal/IImsConfig;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    monitor-exit v0

    .line 30
    return-object p1

    .line 31
    :cond_0
    monitor-exit v0

    .line 32
    const/4 p1, 0x0

    .line 33
    return-object p1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p1
.end method

.method public getEcbmInterface(II)Lcom/android/ims/internal/IImsEcbm;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 2
    .line 3
    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    .line 4
    .line 5
    const-string v2, "getEcbmInterface"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 11
    .line 12
    invoke-static {v0}, Landroid/telephony/ims/ImsService;->access$000(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 18
    .line 19
    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->access$300(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/telephony/ims/feature/MMTelFeature;->getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    monitor-exit v0

    .line 30
    return-object p1

    .line 31
    :cond_0
    monitor-exit v0

    .line 32
    const/4 p1, 0x0

    .line 33
    return-object p1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p1
.end method

.method public getFeatureStatus(II)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 2
    .line 3
    const-string v1, "getFeatureStatus"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/telephony/ims/ImsService;->access$400(Landroid/telephony/ims/ImsService;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/telephony/ims/ImsService;->access$000(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 16
    .line 17
    invoke-static {v1}, Landroid/telephony/ims/ImsService;->access$000(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroid/util/SparseArray;

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 30
    .line 31
    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/ImsService;->getImsFeatureFromType(Landroid/util/SparseArray;I)Landroid/telephony/ims/feature/ImsFeature;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/telephony/ims/feature/ImsFeature;->getFeatureState()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p1, 0x0

    .line 43
    :goto_0
    monitor-exit v0

    .line 44
    return p1

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p1
.end method

.method public getMultiEndpointInterface(II)Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 2
    .line 3
    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    .line 4
    .line 5
    const-string v2, "getMultiEndpointInterface"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 11
    .line 12
    invoke-static {v0}, Landroid/telephony/ims/ImsService;->access$000(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 18
    .line 19
    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->access$300(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/telephony/ims/feature/MMTelFeature;->getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    monitor-exit v0

    .line 30
    return-object p1

    .line 31
    :cond_0
    monitor-exit v0

    .line 32
    const/4 p1, 0x0

    .line 33
    return-object p1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p1
.end method

.method public getPendingCallSession(IIILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 2
    .line 3
    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    .line 4
    .line 5
    const-string v2, "getPendingCallSession"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 11
    .line 12
    invoke-static {v0}, Landroid/telephony/ims/ImsService;->access$000(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 18
    .line 19
    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->access$300(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1, p3, p4}, Landroid/telephony/ims/feature/MMTelFeature;->getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    monitor-exit v0

    .line 30
    return-object p1

    .line 31
    :cond_0
    monitor-exit v0

    .line 32
    const/4 p1, 0x0

    .line 33
    return-object p1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p1
.end method

.method public getUtInterface(II)Lcom/android/ims/internal/IImsUt;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 2
    .line 3
    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    .line 4
    .line 5
    const-string v2, "getUtInterface"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 11
    .line 12
    invoke-static {v0}, Landroid/telephony/ims/ImsService;->access$000(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 18
    .line 19
    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->access$300(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/telephony/ims/feature/MMTelFeature;->getUtInterface()Lcom/android/ims/internal/IImsUt;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    monitor-exit v0

    .line 30
    return-object p1

    .line 31
    :cond_0
    monitor-exit v0

    .line 32
    const/4 p1, 0x0

    .line 33
    return-object p1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p1
.end method

.method public isConnected(IIII)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 2
    .line 3
    const-string v1, "isConnected"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/telephony/ims/ImsService;->access$400(Landroid/telephony/ims/ImsService;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/telephony/ims/ImsService;->access$000(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 16
    .line 17
    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->access$300(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1, p3, p4}, Landroid/telephony/ims/feature/MMTelFeature;->isConnected(II)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    monitor-exit v0

    .line 28
    return p1

    .line 29
    :cond_0
    monitor-exit v0

    .line 30
    const/4 p1, 0x0

    .line 31
    return p1

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p1
.end method

.method public isOpened(II)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 2
    .line 3
    const-string v1, "isOpened"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/telephony/ims/ImsService;->access$400(Landroid/telephony/ims/ImsService;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/telephony/ims/ImsService;->access$000(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 16
    .line 17
    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->access$300(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/telephony/ims/feature/MMTelFeature;->isOpened()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    monitor-exit v0

    .line 28
    return p1

    .line 29
    :cond_0
    monitor-exit v0

    .line 30
    const/4 p1, 0x0

    .line 31
    return p1

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p1
.end method

.method public removeImsFeature(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/telephony/ims/ImsService;->access$000(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 9
    .line 10
    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    .line 11
    .line 12
    const-string v3, "removeImsFeature"

    .line 13
    .line 14
    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 18
    .line 19
    invoke-static {v1, p1, p2, p3}, Landroid/telephony/ims/ImsService;->access$200(Landroid/telephony/ims/ImsService;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 20
    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p1
.end method

.method public removeRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 2
    .line 3
    const-string v1, "removeRegistrationListener"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/telephony/ims/ImsService;->access$400(Landroid/telephony/ims/ImsService;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/telephony/ims/ImsService;->access$000(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 16
    .line 17
    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->access$300(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1, p3}, Landroid/telephony/ims/feature/MMTelFeature;->removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p1
.end method

.method public setUiTTYMode(IIILandroid/os/Message;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 2
    .line 3
    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    .line 4
    .line 5
    const-string/jumbo v2, "setUiTTYMode"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 12
    .line 13
    invoke-static {v0}, Landroid/telephony/ims/ImsService;->access$000(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 19
    .line 20
    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->access$300(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1, p3, p4}, Landroid/telephony/ims/feature/MMTelFeature;->setUiTTYMode(ILandroid/os/Message;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p1
.end method

.method public startSession(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 2
    .line 3
    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    .line 4
    .line 5
    const-string/jumbo v2, "startSession"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 12
    .line 13
    invoke-static {v0}, Landroid/telephony/ims/ImsService;->access$000(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 19
    .line 20
    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->access$300(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1, p3, p4}, Landroid/telephony/ims/feature/MMTelFeature;->startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    monitor-exit v0

    .line 31
    return p1

    .line 32
    :cond_0
    monitor-exit v0

    .line 33
    const/4 p1, 0x0

    .line 34
    return p1

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p1
.end method

.method public turnOffIms(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 2
    .line 3
    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    .line 4
    .line 5
    const-string/jumbo v2, "turnOffIms"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 12
    .line 13
    invoke-static {v0}, Landroid/telephony/ims/ImsService;->access$000(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 19
    .line 20
    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->access$300(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/telephony/ims/feature/MMTelFeature;->turnOffIms()V

    .line 27
    .line 28
    .line 29
    :cond_0
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p1
.end method

.method public turnOnIms(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 2
    .line 3
    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    .line 4
    .line 5
    const-string/jumbo v2, "turnOnIms"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 12
    .line 13
    invoke-static {v0}, Landroid/telephony/ims/ImsService;->access$000(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 19
    .line 20
    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->access$300(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/telephony/ims/feature/MMTelFeature;->turnOnIms()V

    .line 27
    .line 28
    .line 29
    :cond_0
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p1
.end method
