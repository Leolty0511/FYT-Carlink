.class public final Landroid/telephony/CellInfoWcdma;
.super Landroid/telephony/CellInfo;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellInfoWcdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellInfoWcdma"


# instance fields
.field private mCellIdentityWcdma:Landroid/telephony/CellIdentityWcdma;

.field private mCellSignalStrengthWcdma:Landroid/telephony/CellSignalStrengthWcdma;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/CellInfoWcdma$1;

    invoke-direct {v0}, Landroid/telephony/CellInfoWcdma$1;-><init>()V

    sput-object v0, Landroid/telephony/CellInfoWcdma;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/telephony/CellInfo;-><init>()V

    .line 2
    new-instance v0, Landroid/telephony/CellIdentityWcdma;

    invoke-direct {v0}, Landroid/telephony/CellIdentityWcdma;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellInfoWcdma;->mCellIdentityWcdma:Landroid/telephony/CellIdentityWcdma;

    .line 3
    new-instance v0, Landroid/telephony/CellSignalStrengthWcdma;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthWcdma;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellInfoWcdma;->mCellSignalStrengthWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 7
    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/os/Parcel;)V

    .line 8
    sget-object v0, Landroid/telephony/CellIdentityWcdma;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellIdentityWcdma;

    iput-object v0, p0, Landroid/telephony/CellInfoWcdma;->mCellIdentityWcdma:Landroid/telephony/CellIdentityWcdma;

    .line 9
    sget-object v0, Landroid/telephony/CellSignalStrengthWcdma;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CellSignalStrengthWcdma;

    iput-object p1, p0, Landroid/telephony/CellInfoWcdma;->mCellSignalStrengthWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    return-void
.end method

.method public constructor <init>(Landroid/telephony/CellInfoWcdma;)V
    .locals 1

    .line 4
    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/telephony/CellInfo;)V

    .line 5
    iget-object v0, p1, Landroid/telephony/CellInfoWcdma;->mCellIdentityWcdma:Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->copy()Landroid/telephony/CellIdentityWcdma;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellInfoWcdma;->mCellIdentityWcdma:Landroid/telephony/CellIdentityWcdma;

    .line 6
    iget-object p1, p1, Landroid/telephony/CellInfoWcdma;->mCellSignalStrengthWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthWcdma;->copy()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/CellInfoWcdma;->mCellSignalStrengthWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    return-void
.end method

.method public static createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoWcdma;
    .locals 1

    new-instance v0, Landroid/telephony/CellInfoWcdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellInfoWcdma;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "CellInfoWcdma"

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/telephony/CellInfo;->equals(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    :try_start_0
    check-cast p1, Landroid/telephony/CellInfoWcdma;

    .line 10
    .line 11
    iget-object v0, p0, Landroid/telephony/CellInfoWcdma;->mCellIdentityWcdma:Landroid/telephony/CellIdentityWcdma;

    .line 12
    .line 13
    iget-object v2, p1, Landroid/telephony/CellInfoWcdma;->mCellIdentityWcdma:Landroid/telephony/CellIdentityWcdma;

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/telephony/CellIdentityWcdma;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Landroid/telephony/CellInfoWcdma;->mCellSignalStrengthWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    .line 22
    .line 23
    iget-object p1, p1, Landroid/telephony/CellInfoWcdma;->mCellSignalStrengthWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/telephony/CellSignalStrengthWcdma;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    :catch_0
    :cond_1
    return v1
.end method

.method public getCellIdentity()Landroid/telephony/CellIdentityWcdma;
    .locals 1

    iget-object v0, p0, Landroid/telephony/CellInfoWcdma;->mCellIdentityWcdma:Landroid/telephony/CellIdentityWcdma;

    return-object v0
.end method

.method public getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;
    .locals 1

    iget-object v0, p0, Landroid/telephony/CellInfoWcdma;->mCellSignalStrengthWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Landroid/telephony/CellInfo;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/telephony/CellInfoWcdma;->mCellIdentityWcdma:Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Landroid/telephony/CellInfoWcdma;->mCellSignalStrengthWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthWcdma;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public setCellIdentity(Landroid/telephony/CellIdentityWcdma;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/CellInfoWcdma;->mCellIdentityWcdma:Landroid/telephony/CellIdentityWcdma;

    return-void
.end method

.method public setCellSignalStrength(Landroid/telephony/CellSignalStrengthWcdma;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/CellInfoWcdma;->mCellSignalStrengthWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "CellInfoWcdma:{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroid/telephony/CellInfo;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    .line 14
    .line 15
    const-string v1, " "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Landroid/telephony/CellInfoWcdma;->mCellIdentityWcdma:Landroid/telephony/CellIdentityWcdma;

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroid/telephony/CellInfoWcdma;->mCellSignalStrengthWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 31
    .line 32
    .line 33
    const-string/jumbo v1, "}"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-super {p0, p1, p2, v0}, Landroid/telephony/CellInfo;->writeToParcel(Landroid/os/Parcel;II)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroid/telephony/CellInfoWcdma;->mCellIdentityWcdma:Landroid/telephony/CellIdentityWcdma;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellIdentityWcdma;->writeToParcel(Landroid/os/Parcel;I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/telephony/CellInfoWcdma;->mCellSignalStrengthWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellSignalStrengthWcdma;->writeToParcel(Landroid/os/Parcel;I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
