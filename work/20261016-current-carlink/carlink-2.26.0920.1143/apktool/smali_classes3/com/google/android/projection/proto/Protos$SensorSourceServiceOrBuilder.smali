.class public interface abstract Lcom/google/android/projection/proto/Protos$SensorSourceServiceOrBuilder;
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
    name = "SensorSourceServiceOrBuilder"
.end annotation


# virtual methods
.method public abstract getLocationCharacterization()I
.end method

.method public abstract getSensors(I)Lcom/google/android/projection/proto/Protos$SensorSourceService$Sensor;
.end method

.method public abstract getSensorsCount()I
.end method

.method public abstract getSensorsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$SensorSourceService$Sensor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSensorsOrBuilder(I)Lcom/google/android/projection/proto/Protos$SensorSourceService$SensorOrBuilder;
.end method

.method public abstract getSensorsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$SensorSourceService$SensorOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedEvConnectorTypes(I)Lcom/google/android/projection/proto/Protos$EvConnectorType;
.end method

.method public abstract getSupportedEvConnectorTypesCount()I
.end method

.method public abstract getSupportedEvConnectorTypesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$EvConnectorType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedFuelTypes(I)Lcom/google/android/projection/proto/Protos$FuelType;
.end method

.method public abstract getSupportedFuelTypesCount()I
.end method

.method public abstract getSupportedFuelTypesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$FuelType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasLocationCharacterization()Z
.end method
