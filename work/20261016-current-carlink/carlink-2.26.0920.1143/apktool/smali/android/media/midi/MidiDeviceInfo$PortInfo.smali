.class public final Landroid/media/midi/MidiDeviceInfo$PortInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PortInfo"
.end annotation


# static fields
.field public static final TYPE_INPUT:I = 0x1

.field public static final TYPE_OUTPUT:I = 0x2


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mPortNumber:I

.field private final mPortType:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/media/midi/MidiDeviceInfo$PortInfo;->mPortType:I

    .line 5
    .line 6
    iput p2, p0, Landroid/media/midi/MidiDeviceInfo$PortInfo;->mPortNumber:I

    .line 7
    .line 8
    if-nez p3, :cond_0

    .line 9
    .line 10
    const-string p3, ""

    .line 11
    .line 12
    :cond_0
    iput-object p3, p0, Landroid/media/midi/MidiDeviceInfo$PortInfo;->mName:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/midi/MidiDeviceInfo$PortInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPortNumber()I
    .locals 1

    iget v0, p0, Landroid/media/midi/MidiDeviceInfo$PortInfo;->mPortNumber:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroid/media/midi/MidiDeviceInfo$PortInfo;->mPortType:I

    return v0
.end method
