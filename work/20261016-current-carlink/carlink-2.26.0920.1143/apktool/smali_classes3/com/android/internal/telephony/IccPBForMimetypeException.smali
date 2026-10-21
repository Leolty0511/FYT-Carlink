.class public Lcom/android/internal/telephony/IccPBForMimetypeException;
.super Lcom/android/internal/telephony/IccPhoneBookOperationException;
.source "SourceFile"


# static fields
.field public static final CAPACITY_FULL:I = -0x2

.field public static final COMMON_OPREATION_FAILED:I = -0x1

.field public static final OVER_LENGTH_LIMIT:I = -0x3

.field public static final WRONG_FORMAT:I = -0x4

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mErrorCode:I

.field public mMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPhoneBookOperationException;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/internal/telephony/IccPBForMimetypeException;->mErrorCode:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/internal/telephony/IccPBForMimetypeException;->mMimeType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/IccPhoneBookOperationException;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 14
    iput-object p2, p0, Lcom/android/internal/telephony/IccPBForMimetypeException;->mMimeType:Ljava/lang/String;

    .line 15
    iput p1, p0, Lcom/android/internal/telephony/IccPBForMimetypeException;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/IccPhoneBookOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    iput p1, p0, Lcom/android/internal/telephony/IccPBForMimetypeException;->mErrorCode:I

    .line 18
    iput-object p2, p0, Lcom/android/internal/telephony/IccPBForMimetypeException;->mMimeType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookOperationException;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/android/internal/telephony/IccPBForMimetypeException;->mErrorCode:I

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/android/internal/telephony/IccPBForMimetypeException;->mMimeType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/IccPhoneBookOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lcom/android/internal/telephony/IccPBForMimetypeException;->mErrorCode:I

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/android/internal/telephony/IccPBForMimetypeException;->mMimeType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookOperationException;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lcom/android/internal/telephony/IccPBForMimetypeException;->mErrorCode:I

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/android/internal/telephony/IccPBForMimetypeException;->mMimeType:Ljava/lang/String;

    return-void
.end method
