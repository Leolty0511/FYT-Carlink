.class public Landroid/media/audiopolicy/AudioMix;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiopolicy/AudioMix$Builder;,
        Landroid/media/audiopolicy/AudioMix$RouteFlags;
    }
.end annotation


# static fields
.field private static final CALLBACK_FLAGS_ALL:I = 0x1

.field public static final CALLBACK_FLAG_NOTIFY_ACTIVITY:I = 0x1

.field public static final MIX_STATE_DISABLED:I = -0x1

.field public static final MIX_STATE_IDLE:I = 0x0

.field public static final MIX_STATE_MIXING:I = 0x1

.field public static final MIX_TYPE_INVALID:I = -0x1

.field public static final MIX_TYPE_PLAYERS:I = 0x0

.field public static final MIX_TYPE_RECORDERS:I = 0x1

.field public static final ROUTE_FLAG_LOOP_BACK:I = 0x2

.field public static final ROUTE_FLAG_RENDER:I = 0x1

.field private static final ROUTE_FLAG_SUPPORTED:I = 0x3


# instance fields
.field mCallbackFlags:I

.field mDeviceAddress:Ljava/lang/String;

.field final mDeviceSystemType:I

.field private mFormat:Landroid/media/AudioFormat;

.field mMixState:I

.field private mMixType:I

.field private mRouteFlags:I

.field private mRule:Landroid/media/audiopolicy/AudioMixingRule;


# direct methods
.method private constructor <init>(Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/AudioFormat;IIILjava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroid/media/audiopolicy/AudioMix;->mMixType:I

    .line 4
    iput v0, p0, Landroid/media/audiopolicy/AudioMix;->mMixState:I

    .line 5
    iput-object p1, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    .line 6
    iput-object p2, p0, Landroid/media/audiopolicy/AudioMix;->mFormat:Landroid/media/AudioFormat;

    .line 7
    iput p3, p0, Landroid/media/audiopolicy/AudioMix;->mRouteFlags:I

    .line 8
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMixingRule;->getTargetMixType()I

    move-result p1

    iput p1, p0, Landroid/media/audiopolicy/AudioMix;->mMixType:I

    .line 9
    iput p4, p0, Landroid/media/audiopolicy/AudioMix;->mCallbackFlags:I

    .line 10
    iput p5, p0, Landroid/media/audiopolicy/AudioMix;->mDeviceSystemType:I

    if-nez p6, :cond_0

    .line 11
    new-instance p6, Ljava/lang/String;

    const-string p1, ""

    invoke-direct {p6, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_0
    iput-object p6, p0, Landroid/media/audiopolicy/AudioMix;->mDeviceAddress:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/AudioFormat;IIILjava/lang/String;Landroid/media/audiopolicy/AudioMix$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Landroid/media/audiopolicy/AudioMix;-><init>(Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/AudioFormat;IIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getFormat()Landroid/media/AudioFormat;
    .locals 1

    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mFormat:Landroid/media/AudioFormat;

    return-object v0
.end method

.method public getMixState()I
    .locals 1

    iget v0, p0, Landroid/media/audiopolicy/AudioMix;->mMixState:I

    return v0
.end method

.method public getMixType()I
    .locals 1

    iget v0, p0, Landroid/media/audiopolicy/AudioMix;->mMixType:I

    return v0
.end method

.method public getRegistration()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getRouteFlags()I
    .locals 1

    iget v0, p0, Landroid/media/audiopolicy/AudioMix;->mRouteFlags:I

    return v0
.end method

.method public getRule()Landroid/media/audiopolicy/AudioMixingRule;
    .locals 1

    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    iget v1, p0, Landroid/media/audiopolicy/AudioMix;->mRouteFlags:I

    .line 5
    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    iget-object v2, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    .line 15
    .line 16
    aput-object v2, v0, v1

    .line 17
    .line 18
    iget v1, p0, Landroid/media/audiopolicy/AudioMix;->mMixType:I

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x2

    .line 25
    aput-object v1, v0, v2

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    iget-object v2, p0, Landroid/media/audiopolicy/AudioMix;->mFormat:Landroid/media/AudioFormat;

    .line 29
    .line 30
    aput-object v2, v0, v1

    .line 31
    .line 32
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    return v0
.end method

.method public setRegistration(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/media/audiopolicy/AudioMix;->mDeviceAddress:Ljava/lang/String;

    return-void
.end method
