.class public Landroid/net/ProxyProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/ProxyProperties;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOCAL_EXCL_LIST:Ljava/lang/String; = ""

.field public static final LOCAL_HOST:Ljava/lang/String; = "localhost"

.field public static final LOCAL_PORT:I = -0x1


# instance fields
.field private mExclusionList:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private mPacFileUrl:Ljava/lang/String;

.field private mParsedExclusionList:[Ljava/lang/String;

.field private mPort:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/net/ProxyProperties$1;

    invoke-direct {v0}, Landroid/net/ProxyProperties$1;-><init>()V

    sput-object v0, Landroid/net/ProxyProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/ProxyProperties;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getPort()I

    move-result v0

    iput v0, p0, Landroid/net/ProxyProperties;->mPort:I

    .line 25
    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ProxyProperties;->mPacFileUrl:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ProxyProperties;->mExclusionList:Ljava/lang/String;

    .line 27
    iget-object p1, p1, Landroid/net/ProxyProperties;->mParsedExclusionList:[Ljava/lang/String;

    iput-object p1, p0, Landroid/net/ProxyProperties;->mParsedExclusionList:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "localhost"

    .line 7
    iput-object v0, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Landroid/net/ProxyProperties;->mPort:I

    const-string v0, ""

    .line 9
    invoke-direct {p0, v0}, Landroid/net/ProxyProperties;->setExclusionList(Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Landroid/net/ProxyProperties;->mPacFileUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "localhost"

    .line 12
    iput-object v0, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    .line 13
    iput p2, p0, Landroid/net/ProxyProperties;->mPort:I

    const-string p2, ""

    .line 14
    invoke-direct {p0, p2}, Landroid/net/ProxyProperties;->setExclusionList(Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Landroid/net/ProxyProperties;->mPacFileUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    .line 4
    iput p2, p0, Landroid/net/ProxyProperties;->mPort:I

    .line 5
    invoke-direct {p0, p3}, Landroid/net/ProxyProperties;->setExclusionList(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    .line 18
    iput p2, p0, Landroid/net/ProxyProperties;->mPort:I

    .line 19
    iput-object p3, p0, Landroid/net/ProxyProperties;->mExclusionList:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Landroid/net/ProxyProperties;->mParsedExclusionList:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Landroid/net/ProxyProperties;->mPacFileUrl:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Landroid/net/ProxyProperties$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private setExclusionList(Ljava/lang/String;)V
    .locals 6

    .line 1
    iput-object p1, p0, Landroid/net/ProxyProperties;->mExclusionList:Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/String;

    .line 2
    iput-object p1, p0, Landroid/net/ProxyProperties;->mParsedExclusionList:[Ljava/lang/String;

    goto :goto_1

    .line 3
    :cond_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 4
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/ProxyProperties;->mParsedExclusionList:[Ljava/lang/String;

    .line 5
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 6
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 8
    :cond_1
    iget-object v3, p0, Landroid/net/ProxyProperties;->mParsedExclusionList:[Ljava/lang/String;

    mul-int/lit8 v5, v0, 0x2

    aput-object v1, v3, v5

    add-int/2addr v5, v4

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Landroid/net/ProxyProperties;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Landroid/net/ProxyProperties;

    .line 3
    iget-object v0, p0, Landroid/net/ProxyProperties;->mPacFileUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Landroid/net/ProxyProperties;->mPacFileUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/net/ProxyProperties;->mPort:I

    iget p1, p1, Landroid/net/ProxyProperties;->mPort:I

    if-ne v0, p1, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 5
    :cond_2
    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 6
    :cond_3
    iget-object v0, p0, Landroid/net/ProxyProperties;->mExclusionList:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 7
    :cond_4
    iget-object v0, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 8
    :cond_5
    iget-object v0, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v3, p1, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    if-nez v3, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_7

    .line 9
    iget-object v0, p1, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    if-eqz v0, :cond_7

    return v1

    .line 10
    :cond_7
    iget v0, p0, Landroid/net/ProxyProperties;->mPort:I

    iget p1, p1, Landroid/net/ProxyProperties;->mPort:I

    if-eq v0, p1, :cond_8

    return v1

    :cond_8
    return v2
.end method

.method public getExclusionList()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/ProxyProperties;->mExclusionList:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPacFileUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/ProxyProperties;->mPacFileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/net/ProxyProperties;->mPort:I

    return v0
.end method

.method public getSocketAddress()Ljava/net/InetSocketAddress;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    iget v2, p0, Landroid/net/ProxyProperties;->mPort:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    iget-object v2, p0, Landroid/net/ProxyProperties;->mExclusionList:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/ProxyProperties;->mPort:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isExcluded(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/net/ProxyProperties;->mParsedExclusionList:[Ljava/lang/String;

    if-eqz v0, :cond_4

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    move v0, v1

    .line 4
    :goto_0
    iget-object v2, p0, Landroid/net/ProxyProperties;->mParsedExclusionList:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 5
    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/net/ProxyProperties;->mParsedExclusionList:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_2
    return v1
.end method

.method public isValid()Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/net/ProxyProperties;->mPacFileUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    if-nez v0, :cond_1

    move-object v0, v2

    :cond_1
    :try_start_1
    iget v3, p0, Landroid/net/ProxyProperties;->mPort:I

    if-nez v3, :cond_2

    move-object v3, v2

    goto :goto_0

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    iget-object v4, p0, Landroid/net/ProxyProperties;->mExclusionList:Ljava/lang/String;

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v4

    :goto_1
    invoke-static {v0, v3, v2}, Landroid/net/Proxy;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public makeProxy()Ljava/net/Proxy;
    .locals 4

    .line 1
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 2
    iget-object v1, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    iget v3, p0, Landroid/net/ProxyProperties;->mPort:I

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 4
    new-instance v2, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v2, v3, v1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :catch_0
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Landroid/net/ProxyProperties;->mPacFileUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "PAC Script: "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Landroid/net/ProxyProperties;->mPacFileUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "["

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget v1, p0, Landroid/net/ProxyProperties;->mPort:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v1, p0, Landroid/net/ProxyProperties;->mExclusionList:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, " xl="

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/ProxyProperties;->mExclusionList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "[ProxyProperties.mHost == null]"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Landroid/net/ProxyProperties;->mPacFileUrl:Ljava/lang/String;

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 3
    iget-object p2, p0, Landroid/net/ProxyProperties;->mPacFileUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget p2, p0, Landroid/net/ProxyProperties;->mPort:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 6
    iget-object v1, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 8
    iget-object p2, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget p2, p0, Landroid/net/ProxyProperties;->mPort:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 11
    :goto_0
    iget-object p2, p0, Landroid/net/ProxyProperties;->mExclusionList:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Landroid/net/ProxyProperties;->mParsedExclusionList:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
