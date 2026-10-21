.class public final Lcom/android/internal/widget/VerifyCredentialResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/widget/VerifyCredentialResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

.field public static final OK:Lcom/android/internal/widget/VerifyCredentialResponse;

.field public static final RESPONSE_ERROR:I = -0x1

.field public static final RESPONSE_OK:I = 0x0

.field public static final RESPONSE_RETRY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VerifyCredentialResponse"


# instance fields
.field private mPayload:[B

.field private mResponseCode:I

.field private mTimeout:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 7
    .line 8
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, -0x1

    .line 13
    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[B)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 17
    .line 18
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse$1;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/android/internal/widget/VerifyCredentialResponse$1;-><init>()V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    const/4 p1, 0x1

    .line 10
    iput p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    return-void
.end method

.method private constructor <init>(II[B)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    .line 14
    iput p2, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    .line 15
    iput-object p3, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    return-void
.end method

.method public synthetic constructor <init>(II[BLcom/android/internal/widget/VerifyCredentialResponse$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    return-void
.end method

.method public static synthetic access$100(Lcom/android/internal/widget/VerifyCredentialResponse;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->setTimeout(I)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/internal/widget/VerifyCredentialResponse;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->setPayload([B)V

    return-void
.end method

.method public static fromGateKeeperResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    invoke-direct {v0, p0}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    if-nez v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-nez p0, :cond_1

    .line 25
    .line 26
    const-string p0, "VerifyCredentialResponse"

    .line 27
    .line 28
    const-string v0, "verifyChallenge response had no associated payload"

    .line 29
    .line 30
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 34
    .line 35
    move-object v0, p0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>([B)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 44
    .line 45
    :goto_0
    return-object v0
.end method

.method private setPayload([B)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    return-void
.end method

.method private setTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPayload()[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    return v0
.end method

.method public getTimeout()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    return v0
.end method

.method public stripPayload()Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 4

    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    iget v1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    iget v2, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[B)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget p2, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    if-ne p2, v0, :cond_0

    .line 10
    .line 11
    iget p2, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    if-nez p2, :cond_2

    .line 18
    .line 19
    iget-object p2, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    .line 20
    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    array-length p2, p2

    .line 24
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p2, 0x0

    .line 34
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    .line 36
    .line 37
    :cond_2
    :goto_0
    return-void
.end method
