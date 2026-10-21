.class public Landroid/telecom/GatewayInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/GatewayInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mGatewayAddress:Landroid/net/Uri;

.field private final mGatewayProviderPackageName:Ljava/lang/String;

.field private final mOriginalAddress:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telecom/GatewayInfo$1;

    invoke-direct {v0}, Landroid/telecom/GatewayInfo$1;-><init>()V

    sput-object v0, Landroid/telecom/GatewayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/telecom/GatewayInfo;->mGatewayProviderPackageName:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/telecom/GatewayInfo;->mGatewayAddress:Landroid/net/Uri;

    .line 7
    .line 8
    iput-object p3, p0, Landroid/telecom/GatewayInfo;->mOriginalAddress:Landroid/net/Uri;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGatewayAddress()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/telecom/GatewayInfo;->mGatewayAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public getGatewayProviderPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telecom/GatewayInfo;->mGatewayProviderPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalAddress()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/telecom/GatewayInfo;->mOriginalAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Landroid/telecom/GatewayInfo;->mGatewayProviderPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/telecom/GatewayInfo;->mGatewayAddress:Landroid/net/Uri;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Landroid/telecom/GatewayInfo;->mGatewayProviderPackageName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Landroid/telecom/GatewayInfo;->mGatewayAddress:Landroid/net/Uri;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Landroid/telecom/GatewayInfo;->mOriginalAddress:Landroid/net/Uri;

    .line 13
    .line 14
    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
