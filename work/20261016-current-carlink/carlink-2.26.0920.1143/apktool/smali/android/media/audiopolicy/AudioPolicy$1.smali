.class Landroid/media/audiopolicy/AudioPolicy$1;
.super Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/audiopolicy/AudioPolicy;


# direct methods
.method public constructor <init>(Landroid/media/audiopolicy/AudioPolicy;)V
    .locals 0

    iput-object p1, p0, Landroid/media/audiopolicy/AudioPolicy$1;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    invoke-direct {p0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyAudioFocusAbandon(Landroid/media/AudioFocusInfo;)V
    .locals 3

    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$1;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/media/audiopolicy/AudioPolicy;->access$100(Landroid/media/audiopolicy/AudioPolicy;ILjava/lang/Object;I)V

    return-void
.end method

.method public notifyAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V
    .locals 2

    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$1;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1, p2}, Landroid/media/audiopolicy/AudioPolicy;->access$100(Landroid/media/audiopolicy/AudioPolicy;ILjava/lang/Object;I)V

    return-void
.end method

.method public notifyAudioFocusLoss(Landroid/media/AudioFocusInfo;Z)V
    .locals 2

    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$1;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1, p2}, Landroid/media/audiopolicy/AudioPolicy;->access$100(Landroid/media/audiopolicy/AudioPolicy;ILjava/lang/Object;I)V

    return-void
.end method

.method public notifyAudioFocusRequest(Landroid/media/AudioFocusInfo;I)V
    .locals 2

    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$1;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1, p2}, Landroid/media/audiopolicy/AudioPolicy;->access$100(Landroid/media/audiopolicy/AudioPolicy;ILjava/lang/Object;I)V

    return-void
.end method

.method public notifyMixStateUpdate(Ljava/lang/String;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$1;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/media/audiopolicy/AudioPolicy;->access$200(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicyConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioPolicyConfig;->getMixes()Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/media/audiopolicy/AudioMix;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioMix;->getRegistration()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    iput p2, v1, Landroid/media/audiopolicy/AudioMix;->mMixState:I

    .line 38
    .line 39
    iget-object v2, p0, Landroid/media/audiopolicy/AudioPolicy$1;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    .line 40
    .line 41
    const/4 v3, 0x3

    .line 42
    const/4 v4, 0x0

    .line 43
    invoke-static {v2, v3, v1, v4}, Landroid/media/audiopolicy/AudioPolicy;->access$100(Landroid/media/audiopolicy/AudioPolicy;ILjava/lang/Object;I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    return-void
.end method
