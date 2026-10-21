.class public interface abstract Lcom/google/android/projection/proto/Protos$MediaSinkServiceOrBuilder;
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
    name = "MediaSinkServiceOrBuilder"
.end annotation


# virtual methods
.method public abstract getAudioConfigs(I)Lcom/google/android/projection/proto/Protos$AudioConfiguration;
.end method

.method public abstract getAudioConfigsCount()I
.end method

.method public abstract getAudioConfigsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$AudioConfiguration;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAudioConfigsOrBuilder(I)Lcom/google/android/projection/proto/Protos$AudioConfigurationOrBuilder;
.end method

.method public abstract getAudioConfigsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$AudioConfigurationOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAudioType()Lcom/google/android/projection/proto/Protos$AudioStreamType;
.end method

.method public abstract getAvailableType()Lcom/google/android/projection/proto/Protos$MediaCodecType;
.end method

.method public abstract getAvailableWhileInCall()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getDisplayId()I
.end method

.method public abstract getDisplayType()Lcom/google/android/projection/proto/Protos$DisplayType;
.end method

.method public abstract getInitialContentKeycode()Lcom/google/android/projection/proto/Protos$KeyCode;
.end method

.method public abstract getVideoConfigs(I)Lcom/google/android/projection/proto/Protos$VideoConfiguration;
.end method

.method public abstract getVideoConfigsCount()I
.end method

.method public abstract getVideoConfigsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$VideoConfiguration;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVideoConfigsOrBuilder(I)Lcom/google/android/projection/proto/Protos$VideoConfigurationOrBuilder;
.end method

.method public abstract getVideoConfigsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$VideoConfigurationOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasAudioType()Z
.end method

.method public abstract hasAvailableType()Z
.end method

.method public abstract hasAvailableWhileInCall()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasDisplayId()Z
.end method

.method public abstract hasDisplayType()Z
.end method

.method public abstract hasInitialContentKeycode()Z
.end method
