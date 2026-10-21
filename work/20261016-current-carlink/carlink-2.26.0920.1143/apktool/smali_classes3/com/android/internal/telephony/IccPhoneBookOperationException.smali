.class public Lcom/android/internal/telephony/IccPhoneBookOperationException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field public static final AAS_CAPACITY_FULL:I = -0xc

.field public static final ADN_CAPACITY_FULL:I = -0x3

.field public static final ANR_CAPACITY_FULL:I = -0x9

.field public static final EMAIL_CAPACITY_FULL:I = -0x2

.field public static final GROUP_CAPACITY_FULL:I = -0x8

.field public static final GRP_RECORD_MAX_LENGTH:I = -0xa

.field public static final LOAD_ADN_FAIL:I = -0x6

.field public static final OVER_AAS_MAX_LENGTH:I = -0xb

.field public static final OVER_GROUP_NAME_MAX_LENGTH:I = -0x7

.field public static final OVER_NAME_MAX_LENGTH:I = -0x4

.field public static final OVER_NUMBER_MAX_LENGTH:I = -0x5

.field public static final WRITE_OPREATION_FAILED:I = -0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mErrorCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/internal/telephony/IccPhoneBookOperationException;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 10
    iput p1, p0, Lcom/android/internal/telephony/IccPhoneBookOperationException;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 11
    invoke-direct {p0, p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    iput p1, p0, Lcom/android/internal/telephony/IccPhoneBookOperationException;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/android/internal/telephony/IccPhoneBookOperationException;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lcom/android/internal/telephony/IccPhoneBookOperationException;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/android/internal/telephony/IccPhoneBookOperationException;->mErrorCode:I

    return-void
.end method
