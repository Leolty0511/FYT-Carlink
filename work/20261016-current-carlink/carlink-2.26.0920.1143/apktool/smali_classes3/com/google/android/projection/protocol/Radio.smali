.class public abstract Lcom/google/android/projection/protocol/Radio;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/protocol/Radio$RadioEndpoint;,
        Lcom/google/android/projection/protocol/Radio$RadioProperties;,
        Lcom/google/android/projection/protocol/Radio$Range;,
        Lcom/google/android/projection/protocol/Radio$RadioStationInfo;,
        Lcom/google/android/projection/protocol/Radio$StationPreset;,
        Lcom/google/android/projection/protocol/Radio$StationPresetList;,
        Lcom/google/android/projection/protocol/Radio$TrafficIncident;,
        Lcom/google/android/projection/protocol/Radio$RadioState;
    }
.end annotation


# static fields
.field public static final AM_HD_RADIO_TYPE:I = 0x2

.field public static final AM_RADIO_TYPE:I = 0x0

.field public static final FM_HD_RADIO_TYPE:I = 0x3

.field public static final FM_RADIO_TYPE:I = 0x1

.field public static final MAX_HD_SUBCHANNEL:I = 0x4

.field public static final MIN_HD_SUBCHANNEL:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract cancel(I)I
.end method

.method public abstract configureChannelSpacing(II)I
.end method

.method public abstract enableRadioSource()I
.end method

.method public abstract getCurrentRadioState()Lcom/google/android/projection/protocol/Radio$RadioState;
.end method

.method public abstract getProgramList(I)I
.end method

.method public abstract getRadioProperties()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/protocol/Radio$RadioProperties;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTrafficUpdate(I)I
.end method

.method public abstract mute(IZ)I
.end method

.method public abstract scan(IZZZ)I
.end method

.method public abstract seek(IZZ)I
.end method

.method public abstract selectRadio(I)I
.end method

.method public abstract setRadioEndpoint(Lcom/google/android/projection/protocol/Radio$RadioEndpoint;)V
.end method

.method public abstract step(IZZ)I
.end method

.method public abstract tune(III)I
.end method
