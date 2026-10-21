.class public Landroid/net/lowpan/LowpanCredential;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/lowpan/LowpanCredential;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNSPECIFIED_KEY_INDEX:I


# instance fields
.field private mMasterKey:[B

.field private mMasterKeyIndex:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/lowpan/LowpanCredential$1;

    invoke-direct {v0}, Landroid/net/lowpan/LowpanCredential$1;-><init>()V

    sput-object v0, Landroid/net/lowpan/LowpanCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKey:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    return-void
.end method

.method private constructor <init>([B)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKey:[B

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    .line 11
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanCredential;->setMasterKey([B)V

    return-void
.end method

.method private constructor <init>([BI)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKey:[B

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    .line 7
    invoke-virtual {p0, p1, p2}, Landroid/net/lowpan/LowpanCredential;->setMasterKey([BI)V

    return-void
.end method

.method public static synthetic access$002(Landroid/net/lowpan/LowpanCredential;[B)[B
    .locals 0

    iput-object p1, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKey:[B

    return-object p1
.end method

.method public static synthetic access$102(Landroid/net/lowpan/LowpanCredential;I)I
    .locals 0

    iput p1, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    return p1
.end method

.method public static createMasterKey([B)Landroid/net/lowpan/LowpanCredential;
    .locals 1

    .line 1
    new-instance v0, Landroid/net/lowpan/LowpanCredential;

    invoke-direct {v0, p0}, Landroid/net/lowpan/LowpanCredential;-><init>([B)V

    return-object v0
.end method

.method public static createMasterKey([BI)Landroid/net/lowpan/LowpanCredential;
    .locals 1

    .line 2
    new-instance v0, Landroid/net/lowpan/LowpanCredential;

    invoke-direct {v0, p0, p1}, Landroid/net/lowpan/LowpanCredential;-><init>([BI)V

    return-object v0
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
    instance-of v0, p1, Landroid/net/lowpan/LowpanCredential;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Landroid/net/lowpan/LowpanCredential;

    .line 8
    .line 9
    iget-object v0, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKey:[B

    .line 10
    .line 11
    iget-object v2, p1, Landroid/net/lowpan/LowpanCredential;->mMasterKey:[B

    .line 12
    .line 13
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget v0, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    .line 20
    .line 21
    iget p1, p1, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    .line 22
    .line 23
    if-ne v0, p1, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    :cond_1
    return v1
.end method

.method public getMasterKey()[B
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKey:[B

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, [B

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public getMasterKeyIndex()I
    .locals 1

    iget v0, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    iget-object v1, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKey:[B

    .line 5
    .line 6
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    aput-object v1, v0, v2

    .line 16
    .line 17
    iget v1, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x1

    .line 24
    aput-object v1, v0, v2

    .line 25
    .line 26
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    return v0
.end method

.method public isMasterKey()Z
    .locals 1

    iget-object v0, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKey:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setMasterKey([B)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 2
    :cond_0
    iput-object p1, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKey:[B

    return-void
.end method

.method public setMasterKey([BI)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanCredential;->setMasterKey([B)V

    .line 4
    invoke-virtual {p0, p2}, Landroid/net/lowpan/LowpanCredential;->setMasterKeyIndex(I)V

    return-void
.end method

.method public setMasterKeyIndex(I)V
    .locals 0

    iput p1, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    return-void
.end method

.method public toSensitiveString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "<LowpanCredential"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/net/lowpan/LowpanCredential;->isMasterKey()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string v1, " MasterKey:"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKey:[B

    .line 20
    .line 21
    invoke-static {v1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    const-string v1, ", Index:"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    .line 36
    .line 37
    iget v1, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-string v1, " empty"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    const-string v1, ">"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "<LowpanCredential"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/net/lowpan/LowpanCredential;->isMasterKey()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string v1, " MasterKey"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    .line 18
    .line 19
    iget v1, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const-string v1, ", Index:"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string v1, " empty"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    const-string v1, ">"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKey:[B

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/net/lowpan/LowpanCredential;->mMasterKeyIndex:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
