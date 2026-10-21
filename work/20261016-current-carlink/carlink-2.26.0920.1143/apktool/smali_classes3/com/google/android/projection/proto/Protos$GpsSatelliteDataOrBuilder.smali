.class public interface abstract Lcom/google/android/projection/proto/Protos$GpsSatelliteDataOrBuilder;
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
    name = "GpsSatelliteDataOrBuilder"
.end annotation


# virtual methods
.method public abstract getNumberInUse()I
.end method

.method public abstract getNumberInView()I
.end method

.method public abstract getSatellites(I)Lcom/google/android/projection/proto/Protos$GpsSatellite;
.end method

.method public abstract getSatellitesCount()I
.end method

.method public abstract getSatellitesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$GpsSatellite;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSatellitesOrBuilder(I)Lcom/google/android/projection/proto/Protos$GpsSatelliteOrBuilder;
.end method

.method public abstract getSatellitesOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$GpsSatelliteOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasNumberInUse()Z
.end method

.method public abstract hasNumberInView()Z
.end method
