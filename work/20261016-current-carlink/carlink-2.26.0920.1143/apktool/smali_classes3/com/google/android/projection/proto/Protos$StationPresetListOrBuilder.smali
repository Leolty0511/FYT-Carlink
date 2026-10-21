.class public interface abstract Lcom/google/android/projection/proto/Protos$StationPresetListOrBuilder;
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
    name = "StationPresetListOrBuilder"
.end annotation


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPresets(I)Lcom/google/android/projection/proto/Protos$StationPreset;
.end method

.method public abstract getPresetsCount()I
.end method

.method public abstract getPresetsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$StationPreset;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPresetsOrBuilder(I)Lcom/google/android/projection/proto/Protos$StationPresetOrBuilder;
.end method

.method public abstract getPresetsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$StationPresetOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRestrictedStationTypes(I)I
.end method

.method public abstract getRestrictedStationTypesCount()I
.end method

.method public abstract getRestrictedStationTypesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasName()Z
.end method
