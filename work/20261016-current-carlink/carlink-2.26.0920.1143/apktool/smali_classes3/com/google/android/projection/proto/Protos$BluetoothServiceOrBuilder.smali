.class public interface abstract Lcom/google/android/projection/proto/Protos$BluetoothServiceOrBuilder;
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
    name = "BluetoothServiceOrBuilder"
.end annotation


# virtual methods
.method public abstract getCarAddress()Ljava/lang/String;
.end method

.method public abstract getCarAddressBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSupportedPairingMethods(I)Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;
.end method

.method public abstract getSupportedPairingMethodsCount()I
.end method

.method public abstract getSupportedPairingMethodsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$BluetoothPairingMethod;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasCarAddress()Z
.end method
