.class public final Landroid/hardware/hdmi/HdmiRecordSources$ExternalPhysicalAddress;
.super Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExternalPhysicalAddress"
.end annotation


# static fields
.field static final EXTRA_DATA_SIZE:I = 0x2


# instance fields
.field private final mPhysicalAddress:I


# direct methods
.method private constructor <init>(I)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x2

    .line 2
    invoke-direct {p0, v0, v1}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;-><init>(II)V

    .line 3
    iput p1, p0, Landroid/hardware/hdmi/HdmiRecordSources$ExternalPhysicalAddress;->mPhysicalAddress:I

    return-void
.end method

.method public synthetic constructor <init>(ILandroid/hardware/hdmi/HdmiRecordSources$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiRecordSources$ExternalPhysicalAddress;-><init>(I)V

    return-void
.end method


# virtual methods
.method public extraParamToByteArray([BI)I
    .locals 1

    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$ExternalPhysicalAddress;->mPhysicalAddress:I

    int-to-short v0, v0

    invoke-static {v0, p1, p2}, Landroid/hardware/hdmi/HdmiRecordSources;->access$200(S[BI)I

    const/4 p1, 0x2

    return p1
.end method
