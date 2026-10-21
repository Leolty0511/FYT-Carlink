.class public interface abstract Lcom/google/android/projection/proto/Protos$RadioPropertiesOrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RadioPropertiesOrBuilder"
.end annotation


# virtual methods
.method public abstract getAfSwitch()Z
.end method

.method public abstract getAudioLoopback()Z
.end method

.method public abstract getBackgroundTuner()Z
.end method

.method public abstract getChannelRange(I)Lcom/google/android/projection/proto/Protos$Range;
.end method

.method public abstract getChannelRangeCount()I
.end method

.method public abstract getChannelRangeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$Range;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getChannelRangeOrBuilder(I)Lcom/google/android/projection/proto/Protos$RangeOrBuilder;
.end method

.method public abstract getChannelRangeOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$RangeOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getChannelSpacing()I
.end method

.method public abstract getChannelSpacings(I)I
.end method

.method public abstract getChannelSpacingsCount()I
.end method

.method public abstract getChannelSpacingsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMuteCapability()Z
.end method

.method public abstract getRadioId()I
.end method

.method public abstract getRds()Lcom/google/android/projection/proto/Protos$RdsType;
.end method

.method public abstract getRegion()Lcom/google/android/projection/proto/Protos$ItuRegion;
.end method

.method public abstract getStationPresetsAccess()I
.end method

.method public abstract getTa()Z
.end method

.method public abstract getTrafficService()Lcom/google/android/projection/proto/Protos$TrafficServiceType;
.end method

.method public abstract getType()Lcom/google/android/projection/proto/Protos$RadioType;
.end method

.method public abstract hasAfSwitch()Z
.end method

.method public abstract hasAudioLoopback()Z
.end method

.method public abstract hasBackgroundTuner()Z
.end method

.method public abstract hasChannelSpacing()Z
.end method

.method public abstract hasMuteCapability()Z
.end method

.method public abstract hasRadioId()Z
.end method

.method public abstract hasRds()Z
.end method

.method public abstract hasRegion()Z
.end method

.method public abstract hasStationPresetsAccess()Z
.end method

.method public abstract hasTa()Z
.end method

.method public abstract hasTrafficService()Z
.end method

.method public abstract hasType()Z
.end method
