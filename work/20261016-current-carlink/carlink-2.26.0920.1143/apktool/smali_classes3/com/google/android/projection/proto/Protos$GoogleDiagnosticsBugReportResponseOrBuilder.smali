.class public interface abstract Lcom/google/android/projection/proto/Protos$GoogleDiagnosticsBugReportResponseOrBuilder;
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
    name = "GoogleDiagnosticsBugReportResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getBugReport()Ljava/lang/String;
.end method

.method public abstract getBugReportBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTokens(I)I
.end method

.method public abstract getTokensCount()I
.end method

.method public abstract getTokensList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasBugReport()Z
.end method
