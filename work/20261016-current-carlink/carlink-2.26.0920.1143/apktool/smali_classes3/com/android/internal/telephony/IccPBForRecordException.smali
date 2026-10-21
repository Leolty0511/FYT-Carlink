.class public Lcom/android/internal/telephony/IccPBForRecordException;
.super Lcom/android/internal/telephony/IccPhoneBookOperationException;
.source "SourceFile"


# static fields
.field public static final ADN_RECORD_CAPACITY_FULL:I = -0x4

.field public static final ANR_RECORD_CAPACITY_FULL:I = -0x6

.field public static final LOAD_RECORD_FAILED:I = -0x5

.field public static final OVER_GRP_MAX_LENGTH:I = -0x7

.field public static final WRITE_RECORD_FAILED:I = -0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mErrorCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPhoneBookOperationException;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/internal/telephony/IccPBForRecordException;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/IccPhoneBookOperationException;-><init>(Ljava/lang/String;)V

    .line 10
    iput p1, p0, Lcom/android/internal/telephony/IccPBForRecordException;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookOperationException;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/android/internal/telephony/IccPBForRecordException;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/IccPhoneBookOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lcom/android/internal/telephony/IccPBForRecordException;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookOperationException;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/android/internal/telephony/IccPBForRecordException;->mErrorCode:I

    return-void
.end method
