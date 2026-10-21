.class public interface abstract Lcom/google/android/projection/proto/Protos$DeadReckoningDataOrBuilder;
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
    name = "DeadReckoningDataOrBuilder"
.end annotation


# virtual methods
.method public abstract getSteeringAngleE1()I
.end method

.method public abstract getWheelSpeedE3(I)I
.end method

.method public abstract getWheelSpeedE3Count()I
.end method

.method public abstract getWheelSpeedE3List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasSteeringAngleE1()Z
.end method
