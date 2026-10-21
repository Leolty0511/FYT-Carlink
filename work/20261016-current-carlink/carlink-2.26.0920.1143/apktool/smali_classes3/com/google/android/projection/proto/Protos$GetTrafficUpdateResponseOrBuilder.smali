.class public interface abstract Lcom/google/android/projection/proto/Protos$GetTrafficUpdateResponseOrBuilder;
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
    name = "GetTrafficUpdateResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getIncidents(I)Lcom/google/android/projection/proto/Protos$TrafficIncident;
.end method

.method public abstract getIncidentsCount()I
.end method

.method public abstract getIncidentsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$TrafficIncident;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIncidentsOrBuilder(I)Lcom/google/android/projection/proto/Protos$TrafficIncidentOrBuilder;
.end method

.method public abstract getIncidentsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$TrafficIncidentOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRadioId()I
.end method

.method public abstract getStatus()Lcom/google/android/projection/proto/Protos$MessageStatus;
.end method

.method public abstract hasRadioId()Z
.end method

.method public abstract hasStatus()Z
.end method
