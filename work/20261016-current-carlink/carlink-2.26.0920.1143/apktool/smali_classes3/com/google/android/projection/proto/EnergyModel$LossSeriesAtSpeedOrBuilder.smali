.class public interface abstract Lcom/google/android/projection/proto/EnergyModel$LossSeriesAtSpeedOrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/EnergyModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LossSeriesAtSpeedOrBuilder"
.end annotation


# virtual methods
.method public abstract getLossAtPower(I)Lcom/google/android/projection/proto/EnergyModel$LossAtPower;
.end method

.method public abstract getLossAtPowerCount()I
.end method

.method public abstract getLossAtPowerList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/EnergyModel$LossAtPower;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLossAtPowerOrBuilder(I)Lcom/google/android/projection/proto/EnergyModel$LossAtPowerOrBuilder;
.end method

.method public abstract getLossAtPowerOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/EnergyModel$LossAtPowerOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSpeedMetersPerSecond()F
.end method
