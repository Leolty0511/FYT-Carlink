.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final INVALID:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field public static final NUM_SIGNAL_STRENGTH_BINS:I = 0x5

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1


# instance fields
.field private isGsm:Z

.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I

.field private mGsmBitErrorRate:I

.field private mGsmSignalStrength:I

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "none"

    const-string v1, "poor"

    const-string v2, "moderate"

    const-string v3, "good"

    const-string v4, "great"

    .line 1
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 2
    new-instance v0, Landroid/telephony/SignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x63

    .line 2
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 4
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 5
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 6
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 7
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 8
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 9
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const v0, 0x7fffffff

    .line 10
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 11
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 12
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 13
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZ)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual/range {p0 .. p13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    return-void
.end method

.method public constructor <init>(IIIIIIIZ)V
    .locals 14

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    .line 32
    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return-void
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x63

    .line 16
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    const/4 v1, -0x1

    .line 17
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 18
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 19
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 20
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 21
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 22
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 23
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const v0, 0x7fffffff

    .line 24
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 25
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 26
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 27
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 28
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SignalStrength"

    .line 1
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static makeSignalStrengthFromRilParcel(Landroid/os/Parcel;)Landroid/telephony/SignalStrength;
    .locals 2

    .line 1
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 3
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 4
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 6
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 7
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 8
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 9
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 10
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 11
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 12
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 13
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    iput p0, v0, Landroid/telephony/SignalStrength;->mLteCqi:I

    return-object v0
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .locals 1

    .line 1
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 2
    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "GsmSignalStrength"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    const-string v0, "GsmBitErrorRate"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    const-string v0, "CdmaDbm"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    const-string v0, "CdmaEcio"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    const-string v0, "EvdoDbm"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    const-string v0, "EvdoEcio"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    const-string v0, "EvdoSnr"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    const-string v0, "LteSignalStrength"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const-string v0, "LteRsrp"

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const-string v0, "LteRsrq"

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const-string v0, "LteRssnr"

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const-string v0, "LteCqi"

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    const-string v0, "isGsm"

    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 1

    .line 1
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 2
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 3
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 4
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 5
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 6
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 7
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 8
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 9
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 10
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 11
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 12
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 13
    iget-boolean p1, p1, Landroid/telephony/SignalStrength;->isGsm:Z

    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/telephony/SignalStrength;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v2, v1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v2, v1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v2, v1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v2, v1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v2, v1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v2, v1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v2, v1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v2, v1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v2, v1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v2, v1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v2, v1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v2, v1, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne p1, v2, :cond_1

    iget-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    iget-boolean v1, v1, Landroid/telephony/SignalStrength;->isGsm:Z

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    const-string v1, "GsmSignalStrength"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    const-string v1, "GsmBitErrorRate"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    const-string v1, "CdmaDbm"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    const-string v1, "CdmaEcio"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    const-string v1, "EvdoDbm"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    const-string v1, "EvdoEcio"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    const-string v1, "EvdoSnr"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const-string v1, "LteSignalStrength"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const-string v1, "LteRsrp"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const-string v1, "LteRsrq"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const-string v1, "LteRssnr"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    const-string v1, "LteCqi"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "isGsm"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public getAsuLevel()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v0

    .line 6
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    if-nez v0, :cond_4

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    if-ge v0, v1, :cond_3

    :goto_0
    return v0
.end method

.method public getCdmaAsuLevel()I
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x63

    const/4 v4, 0x2

    const/16 v5, -0x64

    const/4 v6, 0x4

    const/16 v7, 0x8

    const/16 v8, -0x5a

    const/16 v9, 0x10

    const/16 v10, -0x4b

    if-lt v0, v10, :cond_0

    move v0, v9

    goto :goto_0

    :cond_0
    const/16 v10, -0x52

    if-lt v0, v10, :cond_1

    move v0, v7

    goto :goto_0

    :cond_1
    if-lt v0, v8, :cond_2

    move v0, v6

    goto :goto_0

    :cond_2
    const/16 v10, -0x5f

    if-lt v0, v10, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    if-lt v0, v5, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v3

    :goto_0
    if-lt v1, v8, :cond_5

    move v2, v9

    goto :goto_1

    :cond_5
    if-lt v1, v5, :cond_6

    move v2, v7

    goto :goto_1

    :cond_6
    const/16 v5, -0x73

    if-lt v1, v5, :cond_7

    move v2, v6

    goto :goto_1

    :cond_7
    const/16 v5, -0x82

    if-lt v1, v5, :cond_8

    move v2, v4

    goto :goto_1

    :cond_8
    const/16 v4, -0x96

    if-lt v1, v4, :cond_9

    goto :goto_1

    :cond_9
    move v2, v3

    :goto_1
    if-ge v0, v2, :cond_a

    goto :goto_2

    :cond_a
    move v0, v2

    :goto_2
    return v0
.end method

.method public getCdmaDbm()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/16 v7, -0x4b

    if-lt v0, v7, :cond_0

    move v0, v6

    goto :goto_0

    :cond_0
    const/16 v7, -0x55

    if-lt v0, v7, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    const/16 v7, -0x5f

    if-lt v0, v7, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    const/16 v7, -0x64

    if-lt v0, v7, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v3

    :goto_0
    const/16 v7, -0x5a

    if-lt v1, v7, :cond_4

    move v2, v6

    goto :goto_1

    :cond_4
    const/16 v6, -0x6e

    if-lt v1, v6, :cond_5

    move v2, v5

    goto :goto_1

    :cond_5
    const/16 v5, -0x82

    if-lt v1, v5, :cond_6

    move v2, v4

    goto :goto_1

    :cond_6
    const/16 v4, -0x96

    if-lt v1, v4, :cond_7

    goto :goto_1

    :cond_7
    move v2, v3

    :goto_1
    if-ge v0, v2, :cond_8

    goto :goto_2

    :cond_8
    move v0, v2

    :goto_2
    return v0
.end method

.method public getDbm()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v0

    :goto_0
    return v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 6
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v1

    const/16 v2, -0x78

    if-ne v1, v2, :cond_2

    goto :goto_2

    :cond_2
    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    if-ge v0, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    move v0, v1

    :goto_2
    return v0
.end method

.method public getEvdoAsuLevel()I
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    const/16 v2, 0x63

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/16 v5, 0x8

    const/16 v6, 0x10

    const/4 v7, 0x1

    const/16 v8, -0x41

    if-lt v0, v8, :cond_0

    move v0, v6

    goto :goto_0

    :cond_0
    const/16 v8, -0x4b

    if-lt v0, v8, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    const/16 v8, -0x55

    if-lt v0, v8, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    const/16 v8, -0x5f

    if-lt v0, v8, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    const/16 v8, -0x69

    if-lt v0, v8, :cond_4

    move v0, v7

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_0
    const/4 v8, 0x7

    if-lt v1, v8, :cond_5

    move v2, v6

    goto :goto_1

    :cond_5
    const/4 v6, 0x6

    if-lt v1, v6, :cond_6

    move v2, v5

    goto :goto_1

    :cond_6
    const/4 v5, 0x5

    if-lt v1, v5, :cond_7

    move v2, v4

    goto :goto_1

    :cond_7
    const/4 v4, 0x3

    if-lt v1, v4, :cond_8

    move v2, v3

    goto :goto_1

    :cond_8
    if-lt v1, v7, :cond_9

    move v2, v7

    :cond_9
    :goto_1
    if-ge v0, v2, :cond_a

    goto :goto_2

    :cond_a
    move v0, v2

    :goto_2
    return v0
.end method

.method public getEvdoDbm()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/16 v7, -0x41

    if-lt v0, v7, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    const/16 v7, -0x4b

    if-lt v0, v7, :cond_1

    move v0, v6

    goto :goto_0

    :cond_1
    const/16 v7, -0x5a

    if-lt v0, v7, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    const/16 v7, -0x69

    if-lt v0, v7, :cond_3

    move v0, v5

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    const/4 v7, 0x7

    if-lt v1, v7, :cond_4

    move v2, v4

    goto :goto_1

    :cond_4
    const/4 v4, 0x5

    if-lt v1, v4, :cond_5

    move v2, v6

    goto :goto_1

    :cond_5
    if-lt v1, v6, :cond_6

    move v2, v3

    goto :goto_1

    :cond_6
    if-lt v1, v5, :cond_7

    move v2, v5

    :cond_7
    :goto_1
    if-ge v0, v2, :cond_8

    goto :goto_2

    :cond_8
    move v0, v2

    :goto_2
    return v0
.end method

.method public getEvdoSnr()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    return v0
.end method

.method public getGsmAsuLevel()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    return v0
.end method

.method public getGsmBitErrorRate()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    return v0
.end method

.method public getGsmDbm()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0x63

    if-ne v0, v2, :cond_0

    move v0, v1

    :cond_0
    if-eq v0, v1, :cond_1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, -0x71

    :cond_1
    return v1
.end method

.method public getGsmLevel()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_4

    const/16 v2, 0x63

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0xc

    if-lt v0, v2, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    if-lt v0, v2, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    :cond_2
    const/4 v2, 0x5

    if-lt v0, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public getGsmSignalStrength()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    return v0
.end method

.method public getLevel()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v0

    if-nez v0, :cond_4

    .line 3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    if-ge v0, v1, :cond_2

    :cond_4
    :goto_0
    return v0
.end method

.method public getLteAsuLevel()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/16 v0, 0xff

    goto :goto_0

    :cond_0
    add-int/lit16 v0, v0, 0x8c

    :goto_0
    return v0
.end method

.method public getLteCqi()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    return v0
.end method

.method public getLteDbm()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteLevel()I
    .locals 9

    .line 1
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/16 v7, -0x2c

    if-le v0, v7, :cond_1

    :cond_0
    move v0, v6

    goto :goto_0

    :cond_1
    const/16 v7, -0x55

    if-lt v0, v7, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    const/16 v7, -0x5f

    if-lt v0, v7, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    const/16 v7, -0x69

    if-lt v0, v7, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    const/16 v7, -0x73

    if-lt v0, v7, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    const/16 v7, -0x8c

    if-lt v0, v7, :cond_0

    move v0, v5

    .line 2
    :goto_0
    iget v7, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v8, 0x12c

    if-le v7, v8, :cond_7

    :cond_6
    move v7, v6

    goto :goto_1

    :cond_7
    const/16 v8, 0x82

    if-lt v7, v8, :cond_8

    move v7, v4

    goto :goto_1

    :cond_8
    const/16 v8, 0x2d

    if-lt v7, v8, :cond_9

    move v7, v3

    goto :goto_1

    :cond_9
    const/16 v8, 0xa

    if-lt v7, v8, :cond_a

    move v7, v2

    goto :goto_1

    :cond_a
    const/16 v8, -0x1e

    if-lt v7, v8, :cond_b

    move v7, v1

    goto :goto_1

    :cond_b
    const/16 v8, -0xc8

    if-lt v7, v8, :cond_6

    move v7, v5

    :goto_1
    if-eq v7, v6, :cond_d

    if-eq v0, v6, :cond_d

    if-ge v0, v7, :cond_c

    goto :goto_2

    :cond_c
    move v0, v7

    :goto_2
    return v0

    :cond_d
    if-eq v7, v6, :cond_e

    return v7

    :cond_e
    if-eq v0, v6, :cond_f

    return v0

    .line 3
    :cond_f
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v6, 0x3f

    if-le v0, v6, :cond_11

    :cond_10
    move v1, v5

    goto :goto_3

    :cond_11
    const/16 v6, 0xc

    if-lt v0, v6, :cond_12

    move v1, v4

    goto :goto_3

    :cond_12
    const/16 v4, 0x8

    if-lt v0, v4, :cond_13

    move v1, v3

    goto :goto_3

    :cond_13
    const/4 v3, 0x5

    if-lt v0, v3, :cond_14

    move v1, v2

    goto :goto_3

    :cond_14
    if-ltz v0, :cond_10

    :goto_3
    return v1
.end method

.method public getLteRsrp()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteRsrq()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    return v0
.end method

.method public getLteRssnr()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return v0
.end method

.method public getLteSignalStrength()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public initialize(IIIIIIIIIIIIZ)V
    .locals 0

    .line 2
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 3
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 4
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 5
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 6
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 7
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 8
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 9
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 10
    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 11
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 12
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 13
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 14
    iput-boolean p13, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return-void
.end method

.method public initialize(IIIIIIIZ)V
    .locals 14

    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    .line 1
    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    return-void
.end method

.method public isGsm()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return v0
.end method

.method public setGsm(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_0

    const-string v1, "gsm|lte"

    goto :goto_0

    :cond_0
    const-string v1, "cdma"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validateInput()V
    .locals 4

    .line 1
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    const/16 v1, 0x63

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 2
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    const/16 v2, -0x78

    if-lez v0, :cond_1

    neg-int v0, v0

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 3
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-lez v0, :cond_2

    neg-int v0, v0

    goto :goto_2

    :cond_2
    const/16 v0, -0xa0

    :goto_2
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 4
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-lez v0, :cond_3

    neg-int v2, v0

    :cond_3
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 5
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    const/4 v2, -0x1

    if-ltz v0, :cond_4

    neg-int v0, v0

    goto :goto_3

    :cond_4
    move v0, v2

    :goto_3
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 6
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-lez v0, :cond_5

    const/16 v3, 0x8

    if-gt v0, v3, :cond_5

    move v2, v0

    :cond_5
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 7
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v0, :cond_6

    move v1, v0

    :cond_6
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 8
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x2c

    const v2, 0x7fffffff

    if-lt v0, v1, :cond_7

    const/16 v1, 0x8c

    if-gt v0, v1, :cond_7

    neg-int v0, v0

    goto :goto_4

    :cond_7
    move v0, v2

    :goto_4
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 9
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_8

    const/16 v1, 0x14

    if-gt v0, v1, :cond_8

    neg-int v0, v0

    goto :goto_5

    :cond_8
    move v0, v2

    :goto_5
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 10
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, -0xc8

    if-lt v0, v1, :cond_9

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_9

    move v2, v0

    :cond_9
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget p2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget p2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget p2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget p2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget p2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget-boolean p2, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
