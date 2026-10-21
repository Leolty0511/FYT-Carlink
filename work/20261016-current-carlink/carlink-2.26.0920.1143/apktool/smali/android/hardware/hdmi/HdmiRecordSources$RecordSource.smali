.class public abstract Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RecordSource"
.end annotation


# instance fields
.field final mExtraDataSize:I

.field final mSourceType:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->mSourceType:I

    .line 5
    .line 6
    iput p2, p0, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->mExtraDataSize:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract extraParamToByteArray([BI)I
.end method

.method public final getDataSize(Z)I
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->mExtraDataSize:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->mExtraDataSize:I

    :goto_0
    return p1
.end method

.method public final toByteArray(Z[BI)I
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    add-int/lit8 v0, p3, 0x1

    .line 4
    .line 5
    iget v1, p0, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->mSourceType:I

    .line 6
    .line 7
    int-to-byte v1, v1

    .line 8
    aput-byte v1, p2, p3

    .line 9
    .line 10
    move p3, v0

    .line 11
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->extraParamToByteArray([BI)I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->getDataSize(Z)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method
