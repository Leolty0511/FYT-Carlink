.class public final Landroid/hardware/hdmi/HdmiRecordSources$DvbData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DvbData"
.end annotation


# instance fields
.field private final mOriginalNetworkId:I

.field private final mServiceId:I

.field private final mTransportStreamId:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/hardware/hdmi/HdmiRecordSources$DvbData;->mTransportStreamId:I

    .line 5
    .line 6
    iput p2, p0, Landroid/hardware/hdmi/HdmiRecordSources$DvbData;->mServiceId:I

    .line 7
    .line 8
    iput p3, p0, Landroid/hardware/hdmi/HdmiRecordSources$DvbData;->mOriginalNetworkId:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public toByteArray([BI)I
    .locals 3

    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$DvbData;->mTransportStreamId:I

    iget v1, p0, Landroid/hardware/hdmi/HdmiRecordSources$DvbData;->mServiceId:I

    iget v2, p0, Landroid/hardware/hdmi/HdmiRecordSources$DvbData;->mOriginalNetworkId:I

    invoke-static {v0, v1, v2, p1, p2}, Landroid/hardware/hdmi/HdmiRecordSources;->access$100(III[BI)I

    move-result p1

    return p1
.end method
