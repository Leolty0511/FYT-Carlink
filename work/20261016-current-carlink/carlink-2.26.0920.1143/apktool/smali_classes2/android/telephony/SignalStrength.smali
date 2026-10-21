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

.field private mLteRsrpBoost:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I

.field private mTdScdmaRscp:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "good"

    .line 2
    .line 3
    const-string v1, "great"

    .line 4
    .line 5
    const-string v2, "none"

    .line 6
    .line 7
    const-string v3, "poor"

    .line 8
    .line 9
    const-string v4, "moderate"

    .line 10
    .line 11
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 16
    .line 17
    new-instance v0, Landroid/telephony/SignalStrength$1;

    .line 18
    .line 19
    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    .line 20
    .line 21
    .line 22
    sput-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 23
    .line 24
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

    const/4 v1, 0x0

    .line 14
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    .line 15
    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIIZ)V
    .locals 15

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p15

    .line 34
    invoke-virtual/range {v0 .. v14}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIIZ)V

    move/from16 v1, p14

    .line 35
    iput v1, v0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIZ)V
    .locals 15

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v13, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v14, p14

    .line 37
    invoke-virtual/range {v0 .. v14}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIIZ)V

    move/from16 v1, p13

    .line 38
    iput v1, v0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZ)V
    .locals 15

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v13, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v14, p13

    .line 40
    invoke-virtual/range {v0 .. v14}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIIZ)V

    return-void
.end method

.method public constructor <init>(IIIIIIIZ)V
    .locals 15

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    const/4 v13, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v14, p8

    .line 42
    invoke-virtual/range {v0 .. v14}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 60
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

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x63

    .line 18
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    const/4 v1, -0x1

    .line 19
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 20
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 21
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 22
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 23
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 24
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 25
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const v0, 0x7fffffff

    .line 26
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 27
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 28
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 29
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    const/4 v1, 0x0

    .line 30
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    .line 31
    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 32
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return-void
.end method

.method private getCdmaRelatedSignalStrength()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    if-nez v0, :cond_2

    .line 13
    .line 14
    :cond_1
    move v0, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_2
    if-ge v0, v1, :cond_1

    .line 17
    .line 18
    :goto_0
    return v0
.end method

.method private getGsmRelatedSignalStrength()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    :cond_0
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "SignalStrength"

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static makeSignalStrengthFromRilParcel(Landroid/os/Parcel;)Landroid/telephony/SignalStrength;
    .locals 2

    .line 1
    new-instance v0, Landroid/telephony/SignalStrength;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    iput v1, v0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    iput v1, v0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    iput p0, v0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 83
    .line 84
    return-object v0
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .locals 1

    .line 1
    new-instance v0, Landroid/telephony/SignalStrength;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "GsmSignalStrength"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 8
    .line 9
    const-string v0, "GsmBitErrorRate"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 16
    .line 17
    const-string v0, "CdmaDbm"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 24
    .line 25
    const-string v0, "CdmaEcio"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 32
    .line 33
    const-string v0, "EvdoDbm"

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 40
    .line 41
    const-string v0, "EvdoEcio"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 48
    .line 49
    const-string v0, "EvdoSnr"

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 56
    .line 57
    const-string v0, "LteSignalStrength"

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 64
    .line 65
    const-string v0, "LteRsrp"

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 72
    .line 73
    const-string v0, "LteRsrq"

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 80
    .line 81
    const-string v0, "LteRssnr"

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 88
    .line 89
    const-string v0, "LteCqi"

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 96
    .line 97
    const-string v0, "lteRsrpBoost"

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    .line 104
    .line 105
    const-string v0, "TdScdma"

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 112
    .line 113
    const-string v0, "isGsm"

    .line 114
    .line 115
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 120
    .line 121
    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 1

    .line 1
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 2
    .line 3
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 4
    .line 5
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 6
    .line 7
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 8
    .line 9
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 10
    .line 11
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 12
    .line 13
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 14
    .line 15
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 16
    .line 17
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 18
    .line 19
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 20
    .line 21
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 22
    .line 23
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 24
    .line 25
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 26
    .line 27
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 28
    .line 29
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 30
    .line 31
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 32
    .line 33
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 34
    .line 35
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 36
    .line 37
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 38
    .line 39
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 40
    .line 41
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 42
    .line 43
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 44
    .line 45
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 46
    .line 47
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 48
    .line 49
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    .line 50
    .line 51
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    .line 52
    .line 53
    iget v0, p1, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 54
    .line 55
    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 56
    .line 57
    iget-boolean p1, p1, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 58
    .line 59
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 60
    .line 61
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    move-object v1, p1

    .line 3
    check-cast v1, Landroid/telephony/SignalStrength;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    iget p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 9
    .line 10
    iget v2, v1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 11
    .line 12
    if-ne p1, v2, :cond_1

    .line 13
    .line 14
    iget p1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 15
    .line 16
    iget v2, v1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 17
    .line 18
    if-ne p1, v2, :cond_1

    .line 19
    .line 20
    iget p1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 21
    .line 22
    iget v2, v1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 23
    .line 24
    if-ne p1, v2, :cond_1

    .line 25
    .line 26
    iget p1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 27
    .line 28
    iget v2, v1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 29
    .line 30
    if-ne p1, v2, :cond_1

    .line 31
    .line 32
    iget p1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 33
    .line 34
    iget v2, v1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 35
    .line 36
    if-ne p1, v2, :cond_1

    .line 37
    .line 38
    iget p1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 39
    .line 40
    iget v2, v1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 41
    .line 42
    if-ne p1, v2, :cond_1

    .line 43
    .line 44
    iget p1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 45
    .line 46
    iget v2, v1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 47
    .line 48
    if-ne p1, v2, :cond_1

    .line 49
    .line 50
    iget p1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 51
    .line 52
    iget v2, v1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 53
    .line 54
    if-ne p1, v2, :cond_1

    .line 55
    .line 56
    iget p1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 57
    .line 58
    iget v2, v1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 59
    .line 60
    if-ne p1, v2, :cond_1

    .line 61
    .line 62
    iget p1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 63
    .line 64
    iget v2, v1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 65
    .line 66
    if-ne p1, v2, :cond_1

    .line 67
    .line 68
    iget p1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 69
    .line 70
    iget v2, v1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 71
    .line 72
    if-ne p1, v2, :cond_1

    .line 73
    .line 74
    iget p1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 75
    .line 76
    iget v2, v1, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 77
    .line 78
    if-ne p1, v2, :cond_1

    .line 79
    .line 80
    iget p1, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    .line 81
    .line 82
    iget v2, v1, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    .line 83
    .line 84
    if-ne p1, v2, :cond_1

    .line 85
    .line 86
    iget p1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 87
    .line 88
    iget v2, v1, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 89
    .line 90
    if-ne p1, v2, :cond_1

    .line 91
    .line 92
    iget-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 93
    .line 94
    iget-boolean v1, v1, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 95
    .line 96
    if-ne p1, v1, :cond_1

    .line 97
    .line 98
    const/4 v0, 0x1

    .line 99
    :catch_0
    :cond_1
    return v0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "GsmSignalStrength"

    .line 2
    .line 3
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    const-string v0, "GsmBitErrorRate"

    .line 9
    .line 10
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    const-string v0, "CdmaDbm"

    .line 16
    .line 17
    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    const-string v0, "CdmaEcio"

    .line 23
    .line 24
    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    const-string v0, "EvdoDbm"

    .line 30
    .line 31
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    const-string v0, "EvdoEcio"

    .line 37
    .line 38
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 39
    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    const-string v0, "EvdoSnr"

    .line 44
    .line 45
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 46
    .line 47
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    const-string v0, "LteSignalStrength"

    .line 51
    .line 52
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 53
    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    const-string v0, "LteRsrp"

    .line 58
    .line 59
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 60
    .line 61
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    const-string v0, "LteRsrq"

    .line 65
    .line 66
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 67
    .line 68
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    const-string v0, "LteRssnr"

    .line 72
    .line 73
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 74
    .line 75
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    const-string v0, "LteCqi"

    .line 79
    .line 80
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 81
    .line 82
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    const-string v0, "lteRsrpBoost"

    .line 86
    .line 87
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    .line 88
    .line 89
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    const-string v0, "TdScdma"

    .line 93
    .line 94
    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 95
    .line 96
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    const-string v0, "isGsm"

    .line 100
    .line 101
    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 102
    .line 103
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public fixType()V
    .locals 1

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getCdmaRelatedSignalStrength()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return-void
.end method

.method public getAsuLevel()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 6
    .line 7
    const v1, 0x7fffffff

    .line 8
    .line 9
    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaAsuLevel()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_3

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    if-nez v0, :cond_5

    .line 43
    .line 44
    :cond_4
    move v0, v1

    .line 45
    goto :goto_0

    .line 46
    :cond_5
    if-ge v0, v1, :cond_4

    .line 47
    .line 48
    :goto_0
    return v0
.end method

.method public getCdmaAsuLevel()I
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, -0x4b

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    const/16 v4, 0x63

    .line 13
    .line 14
    const/4 v5, 0x2

    .line 15
    const/16 v6, -0x64

    .line 16
    .line 17
    const/4 v7, 0x4

    .line 18
    const/16 v8, 0x8

    .line 19
    .line 20
    const/16 v9, -0x5a

    .line 21
    .line 22
    const/16 v10, 0x10

    .line 23
    .line 24
    if-lt v0, v2, :cond_0

    .line 25
    .line 26
    move v0, v10

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/16 v2, -0x52

    .line 29
    .line 30
    if-lt v0, v2, :cond_1

    .line 31
    .line 32
    move v0, v8

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    if-lt v0, v9, :cond_2

    .line 35
    .line 36
    move v0, v7

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const/16 v2, -0x5f

    .line 39
    .line 40
    if-lt v0, v2, :cond_3

    .line 41
    .line 42
    move v0, v5

    .line 43
    goto :goto_0

    .line 44
    :cond_3
    if-lt v0, v6, :cond_4

    .line 45
    .line 46
    move v0, v3

    .line 47
    goto :goto_0

    .line 48
    :cond_4
    move v0, v4

    .line 49
    :goto_0
    if-lt v1, v9, :cond_5

    .line 50
    .line 51
    move v3, v10

    .line 52
    goto :goto_1

    .line 53
    :cond_5
    if-lt v1, v6, :cond_6

    .line 54
    .line 55
    move v3, v8

    .line 56
    goto :goto_1

    .line 57
    :cond_6
    const/16 v2, -0x73

    .line 58
    .line 59
    if-lt v1, v2, :cond_7

    .line 60
    .line 61
    move v3, v7

    .line 62
    goto :goto_1

    .line 63
    :cond_7
    const/16 v2, -0x82

    .line 64
    .line 65
    if-lt v1, v2, :cond_8

    .line 66
    .line 67
    move v3, v5

    .line 68
    goto :goto_1

    .line 69
    :cond_8
    const/16 v2, -0x96

    .line 70
    .line 71
    if-lt v1, v2, :cond_9

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_9
    move v3, v4

    .line 75
    :goto_1
    if-ge v0, v3, :cond_a

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_a
    move v0, v3

    .line 79
    :goto_2
    return v0
.end method

.method public getCdmaDbm()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, -0x4b

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x2

    .line 14
    const/4 v6, 0x3

    .line 15
    const/4 v7, 0x4

    .line 16
    if-lt v0, v2, :cond_0

    .line 17
    .line 18
    move v0, v7

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/16 v2, -0x55

    .line 21
    .line 22
    if-lt v0, v2, :cond_1

    .line 23
    .line 24
    move v0, v6

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/16 v2, -0x5f

    .line 27
    .line 28
    if-lt v0, v2, :cond_2

    .line 29
    .line 30
    move v0, v5

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/16 v2, -0x64

    .line 33
    .line 34
    if-lt v0, v2, :cond_3

    .line 35
    .line 36
    move v0, v3

    .line 37
    goto :goto_0

    .line 38
    :cond_3
    move v0, v4

    .line 39
    :goto_0
    const/16 v2, -0x5a

    .line 40
    .line 41
    if-lt v1, v2, :cond_4

    .line 42
    .line 43
    move v3, v7

    .line 44
    goto :goto_1

    .line 45
    :cond_4
    const/16 v2, -0x6e

    .line 46
    .line 47
    if-lt v1, v2, :cond_5

    .line 48
    .line 49
    move v3, v6

    .line 50
    goto :goto_1

    .line 51
    :cond_5
    const/16 v2, -0x82

    .line 52
    .line 53
    if-lt v1, v2, :cond_6

    .line 54
    .line 55
    move v3, v5

    .line 56
    goto :goto_1

    .line 57
    :cond_6
    const/16 v2, -0x96

    .line 58
    .line 59
    if-lt v1, v2, :cond_7

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_7
    move v3, v4

    .line 63
    :goto_1
    if-ge v0, v3, :cond_8

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_8
    move v0, v3

    .line 67
    :goto_2
    return v0
.end method

.method public getDbm()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const v1, 0x7fffffff

    .line 12
    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    :cond_1
    :goto_0
    return v0

    .line 32
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/16 v2, -0x78

    .line 41
    .line 42
    if-ne v1, v2, :cond_3

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_3
    if-ne v0, v2, :cond_4

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_4
    if-ge v0, v1, :cond_5

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_5
    :goto_1
    move v0, v1

    .line 52
    :goto_2
    return v0
.end method

.method public getEvdoAsuLevel()I
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, -0x41

    .line 10
    .line 11
    const/16 v3, 0x63

    .line 12
    .line 13
    const/4 v4, 0x2

    .line 14
    const/4 v5, 0x4

    .line 15
    const/16 v6, 0x8

    .line 16
    .line 17
    const/16 v7, 0x10

    .line 18
    .line 19
    const/4 v8, 0x1

    .line 20
    if-lt v0, v2, :cond_0

    .line 21
    .line 22
    move v0, v7

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/16 v2, -0x4b

    .line 25
    .line 26
    if-lt v0, v2, :cond_1

    .line 27
    .line 28
    move v0, v6

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/16 v2, -0x55

    .line 31
    .line 32
    if-lt v0, v2, :cond_2

    .line 33
    .line 34
    move v0, v5

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/16 v2, -0x5f

    .line 37
    .line 38
    if-lt v0, v2, :cond_3

    .line 39
    .line 40
    move v0, v4

    .line 41
    goto :goto_0

    .line 42
    :cond_3
    const/16 v2, -0x69

    .line 43
    .line 44
    if-lt v0, v2, :cond_4

    .line 45
    .line 46
    move v0, v8

    .line 47
    goto :goto_0

    .line 48
    :cond_4
    move v0, v3

    .line 49
    :goto_0
    const/4 v2, 0x7

    .line 50
    if-lt v1, v2, :cond_5

    .line 51
    .line 52
    move v3, v7

    .line 53
    goto :goto_1

    .line 54
    :cond_5
    const/4 v2, 0x6

    .line 55
    if-lt v1, v2, :cond_6

    .line 56
    .line 57
    move v3, v6

    .line 58
    goto :goto_1

    .line 59
    :cond_6
    const/4 v2, 0x5

    .line 60
    if-lt v1, v2, :cond_7

    .line 61
    .line 62
    move v3, v5

    .line 63
    goto :goto_1

    .line 64
    :cond_7
    const/4 v2, 0x3

    .line 65
    if-lt v1, v2, :cond_8

    .line 66
    .line 67
    move v3, v4

    .line 68
    goto :goto_1

    .line 69
    :cond_8
    if-lt v1, v8, :cond_9

    .line 70
    .line 71
    move v3, v8

    .line 72
    :cond_9
    :goto_1
    if-ge v0, v3, :cond_a

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_a
    move v0, v3

    .line 76
    :goto_2
    return v0
.end method

.method public getEvdoDbm()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, -0x41

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x2

    .line 13
    const/4 v5, 0x4

    .line 14
    const/4 v6, 0x1

    .line 15
    const/4 v7, 0x3

    .line 16
    if-lt v0, v2, :cond_0

    .line 17
    .line 18
    move v0, v5

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/16 v2, -0x4b

    .line 21
    .line 22
    if-lt v0, v2, :cond_1

    .line 23
    .line 24
    move v0, v7

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/16 v2, -0x5a

    .line 27
    .line 28
    if-lt v0, v2, :cond_2

    .line 29
    .line 30
    move v0, v4

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/16 v2, -0x69

    .line 33
    .line 34
    if-lt v0, v2, :cond_3

    .line 35
    .line 36
    move v0, v6

    .line 37
    goto :goto_0

    .line 38
    :cond_3
    move v0, v3

    .line 39
    :goto_0
    const/4 v2, 0x7

    .line 40
    if-lt v1, v2, :cond_4

    .line 41
    .line 42
    move v3, v5

    .line 43
    goto :goto_1

    .line 44
    :cond_4
    const/4 v2, 0x5

    .line 45
    if-lt v1, v2, :cond_5

    .line 46
    .line 47
    move v3, v7

    .line 48
    goto :goto_1

    .line 49
    :cond_5
    if-lt v1, v7, :cond_6

    .line 50
    .line 51
    move v3, v4

    .line 52
    goto :goto_1

    .line 53
    :cond_6
    if-lt v1, v6, :cond_7

    .line 54
    .line 55
    move v3, v6

    .line 56
    :cond_7
    :goto_1
    if-ge v0, v3, :cond_8

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_8
    move v0, v3

    .line 60
    :goto_2
    return v0
.end method

.method public getEvdoSnr()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    return v0
.end method

.method public getGsmAsuLevel()I
    .locals 1

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    return v0
.end method

.method public getGsmBitErrorRate()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    return v0
.end method

.method public getGsmDbm()I
    .locals 3

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    const/16 v1, 0x63

    const/4 v2, -0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    :cond_0
    if-eq v0, v2, :cond_1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v0, -0x71

    :cond_1
    return v2
.end method

.method public getGsmLevel()I
    .locals 3

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

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getGsmRelatedSignalStrength()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getCdmaRelatedSignalStrength()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getLteAsuLevel()I
    .locals 2

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

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    return v0
.end method

.method public getLteDbm()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteLevel()I
    .locals 11

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x107002f

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    array-length v1, v0

    .line 13
    const/4 v2, 0x6

    .line 14
    const/4 v3, 0x5

    .line 15
    const/4 v4, 0x1

    .line 16
    const/4 v5, 0x2

    .line 17
    const/4 v6, 0x3

    .line 18
    const/4 v7, 0x4

    .line 19
    const/4 v8, 0x0

    .line 20
    const/4 v9, -0x1

    .line 21
    if-eq v1, v2, :cond_0

    .line 22
    .line 23
    const-string v0, "SignalStrength"

    .line 24
    .line 25
    const-string v1, "getLteLevel - config_lteDbmThresholds has invalid num of elements. Cannot evaluate RSRP signal."

    .line 26
    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 32
    .line 33
    aget v2, v0, v3

    .line 34
    .line 35
    if-le v1, v2, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    aget v2, v0, v7

    .line 39
    .line 40
    iget v10, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    .line 41
    .line 42
    sub-int/2addr v2, v10

    .line 43
    if-lt v1, v2, :cond_2

    .line 44
    .line 45
    move v0, v7

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    aget v2, v0, v6

    .line 48
    .line 49
    sub-int/2addr v2, v10

    .line 50
    if-lt v1, v2, :cond_3

    .line 51
    .line 52
    move v0, v6

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    aget v2, v0, v5

    .line 55
    .line 56
    sub-int/2addr v2, v10

    .line 57
    if-lt v1, v2, :cond_4

    .line 58
    .line 59
    move v0, v5

    .line 60
    goto :goto_1

    .line 61
    :cond_4
    aget v2, v0, v4

    .line 62
    .line 63
    sub-int/2addr v2, v10

    .line 64
    if-lt v1, v2, :cond_5

    .line 65
    .line 66
    move v0, v4

    .line 67
    goto :goto_1

    .line 68
    :cond_5
    aget v0, v0, v8

    .line 69
    .line 70
    if-lt v1, v0, :cond_6

    .line 71
    .line 72
    move v0, v8

    .line 73
    goto :goto_1

    .line 74
    :cond_6
    :goto_0
    move v0, v9

    .line 75
    :goto_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 76
    .line 77
    const/16 v2, 0x12c

    .line 78
    .line 79
    if-le v1, v2, :cond_8

    .line 80
    .line 81
    :cond_7
    move v1, v9

    .line 82
    goto :goto_2

    .line 83
    :cond_8
    const/16 v2, 0x82

    .line 84
    .line 85
    if-lt v1, v2, :cond_9

    .line 86
    .line 87
    move v1, v7

    .line 88
    goto :goto_2

    .line 89
    :cond_9
    const/16 v2, 0x2d

    .line 90
    .line 91
    if-lt v1, v2, :cond_a

    .line 92
    .line 93
    move v1, v6

    .line 94
    goto :goto_2

    .line 95
    :cond_a
    const/16 v2, 0xa

    .line 96
    .line 97
    if-lt v1, v2, :cond_b

    .line 98
    .line 99
    move v1, v5

    .line 100
    goto :goto_2

    .line 101
    :cond_b
    const/16 v2, -0x1e

    .line 102
    .line 103
    if-lt v1, v2, :cond_c

    .line 104
    .line 105
    move v1, v4

    .line 106
    goto :goto_2

    .line 107
    :cond_c
    const/16 v2, -0xc8

    .line 108
    .line 109
    if-lt v1, v2, :cond_7

    .line 110
    .line 111
    move v1, v8

    .line 112
    :goto_2
    if-eq v1, v9, :cond_e

    .line 113
    .line 114
    if-eq v0, v9, :cond_e

    .line 115
    .line 116
    if-ge v0, v1, :cond_d

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_d
    move v0, v1

    .line 120
    :goto_3
    return v0

    .line 121
    :cond_e
    if-eq v1, v9, :cond_f

    .line 122
    .line 123
    return v1

    .line 124
    :cond_f
    if-eq v0, v9, :cond_10

    .line 125
    .line 126
    return v0

    .line 127
    :cond_10
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 128
    .line 129
    const/16 v1, 0x3f

    .line 130
    .line 131
    if-le v0, v1, :cond_12

    .line 132
    .line 133
    :cond_11
    move v4, v8

    .line 134
    goto :goto_4

    .line 135
    :cond_12
    const/16 v1, 0xc

    .line 136
    .line 137
    if-lt v0, v1, :cond_13

    .line 138
    .line 139
    move v4, v7

    .line 140
    goto :goto_4

    .line 141
    :cond_13
    const/16 v1, 0x8

    .line 142
    .line 143
    if-lt v0, v1, :cond_14

    .line 144
    .line 145
    move v4, v6

    .line 146
    goto :goto_4

    .line 147
    :cond_14
    if-lt v0, v3, :cond_15

    .line 148
    .line 149
    move v4, v5

    .line 150
    goto :goto_4

    .line 151
    :cond_15
    if-ltz v0, :cond_11

    .line 152
    .line 153
    :goto_4
    return v4
.end method

.method public getLteRsrp()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteRsrpBoost()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    return v0
.end method

.method public getLteRsrq()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    return v0
.end method

.method public getLteRssnr()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return v0
.end method

.method public getLteSignalStrength()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    return v0
.end method

.method public getTdScdmaAsuLevel()I
    .locals 2

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/16 v0, 0xff

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x78

    :goto_0
    return v0
.end method

.method public getTdScdmaDbm()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    return v0
.end method

.method public getTdScdmaLevel()I
    .locals 3

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v0

    const/16 v1, -0x19

    const/4 v2, 0x0

    if-gt v0, v1, :cond_4

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, -0x31

    if-lt v0, v1, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/16 v1, -0x49

    if-lt v0, v1, :cond_2

    const/4 v2, 0x3

    goto :goto_0

    :cond_2
    const/16 v1, -0x61

    if-lt v0, v1, :cond_3

    const/4 v2, 0x2

    goto :goto_0

    :cond_3
    const/16 v1, -0x6e

    if-lt v0, v1, :cond_4

    const/4 v2, 0x1

    :cond_4
    :goto_0
    return v2
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    add-int/2addr v1, v0

    return v1
.end method

.method public initialize(IIIIIIIIIIIIIZ)V
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
    iput p13, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    const p1, 0x7fffffff

    .line 15
    iput p1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 16
    iput-boolean p14, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return-void
.end method

.method public initialize(IIIIIIIZ)V
    .locals 15

    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    const/4 v13, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v14, p8

    .line 1
    invoke-virtual/range {v0 .. v14}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIIZ)V

    return-void
.end method

.method public isGsm()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return v0
.end method

.method public setGsm(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return-void
.end method

.method public setLteRsrpBoost(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SignalStrength: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

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

    .line 2
    .line 3
    const/16 v1, 0x63

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, v1

    .line 9
    :goto_0
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 10
    .line 11
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 12
    .line 13
    const/16 v2, -0x78

    .line 14
    .line 15
    if-lez v0, :cond_1

    .line 16
    .line 17
    neg-int v0, v0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move v0, v2

    .line 20
    :goto_1
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 21
    .line 22
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 23
    .line 24
    if-lez v0, :cond_2

    .line 25
    .line 26
    neg-int v0, v0

    .line 27
    goto :goto_2

    .line 28
    :cond_2
    const/16 v0, -0xa0

    .line 29
    .line 30
    :goto_2
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 31
    .line 32
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 33
    .line 34
    if-lez v0, :cond_3

    .line 35
    .line 36
    neg-int v2, v0

    .line 37
    :cond_3
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 38
    .line 39
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 40
    .line 41
    const/4 v2, -0x1

    .line 42
    if-ltz v0, :cond_4

    .line 43
    .line 44
    neg-int v0, v0

    .line 45
    goto :goto_3

    .line 46
    :cond_4
    move v0, v2

    .line 47
    :goto_3
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 48
    .line 49
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 50
    .line 51
    if-lez v0, :cond_5

    .line 52
    .line 53
    const/16 v3, 0x8

    .line 54
    .line 55
    if-gt v0, v3, :cond_5

    .line 56
    .line 57
    move v2, v0

    .line 58
    :cond_5
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 59
    .line 60
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 61
    .line 62
    if-ltz v0, :cond_6

    .line 63
    .line 64
    move v1, v0

    .line 65
    :cond_6
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 66
    .line 67
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 68
    .line 69
    const/16 v1, 0x2c

    .line 70
    .line 71
    const v2, 0x7fffffff

    .line 72
    .line 73
    .line 74
    if-lt v0, v1, :cond_7

    .line 75
    .line 76
    const/16 v1, 0x8c

    .line 77
    .line 78
    if-gt v0, v1, :cond_7

    .line 79
    .line 80
    neg-int v0, v0

    .line 81
    goto :goto_4

    .line 82
    :cond_7
    move v0, v2

    .line 83
    :goto_4
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 84
    .line 85
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 86
    .line 87
    const/4 v1, 0x3

    .line 88
    if-lt v0, v1, :cond_8

    .line 89
    .line 90
    const/16 v1, 0x14

    .line 91
    .line 92
    if-gt v0, v1, :cond_8

    .line 93
    .line 94
    neg-int v0, v0

    .line 95
    goto :goto_5

    .line 96
    :cond_8
    move v0, v2

    .line 97
    :goto_5
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 98
    .line 99
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 100
    .line 101
    const/16 v1, -0xc8

    .line 102
    .line 103
    if-lt v0, v1, :cond_9

    .line 104
    .line 105
    const/16 v1, 0x12c

    .line 106
    .line 107
    if-gt v0, v1, :cond_9

    .line 108
    .line 109
    goto :goto_6

    .line 110
    :cond_9
    move v0, v2

    .line 111
    :goto_6
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 112
    .line 113
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 114
    .line 115
    const/16 v1, 0x19

    .line 116
    .line 117
    if-lt v0, v1, :cond_a

    .line 118
    .line 119
    const/16 v1, 0x78

    .line 120
    .line 121
    if-gt v0, v1, :cond_a

    .line 122
    .line 123
    neg-int v2, v0

    .line 124
    :cond_a
    iput v2, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 125
    .line 126
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget p2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    iget p2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    iget p2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    iget p2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    .line 45
    .line 46
    iget p2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    .line 50
    .line 51
    iget p2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    .line 55
    .line 56
    iget p2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    .line 60
    .line 61
    iget p2, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    .line 65
    .line 66
    iget p2, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    .line 70
    .line 71
    iget-boolean p2, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    .line 75
    .line 76
    return-void
.end method
