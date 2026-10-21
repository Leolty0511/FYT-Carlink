.class public interface abstract Lcom/google/android/projection/proto/Protos$VendorExtensionServiceOrBuilder;
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
    name = "VendorExtensionServiceOrBuilder"
.end annotation


# virtual methods
.method public abstract getData()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPackageWhiteList(I)Ljava/lang/String;
.end method

.method public abstract getPackageWhiteListBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPackageWhiteListCount()I
.end method

.method public abstract getPackageWhiteListList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getServiceName()Ljava/lang/String;
.end method

.method public abstract getServiceNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasData()Z
.end method

.method public abstract hasServiceName()Z
.end method
