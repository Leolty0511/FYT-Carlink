.class public final Landroid/net/MatchAllNetworkSpecifier;
.super Landroid/net/NetworkSpecifier;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/MatchAllNetworkSpecifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/MatchAllNetworkSpecifier$1;

    invoke-direct {v0}, Landroid/net/MatchAllNetworkSpecifier$1;-><init>()V

    sput-object v0, Landroid/net/MatchAllNetworkSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/net/NetworkSpecifier;-><init>()V

    return-void
.end method

.method public static checkNotMatchAllNetworkSpecifier(Landroid/net/NetworkSpecifier;)V
    .locals 1

    .line 1
    instance-of p0, p0, Landroid/net/MatchAllNetworkSpecifier;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v0, "A MatchAllNetworkSpecifier is not permitted"

    .line 9
    .line 10
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Landroid/net/MatchAllNetworkSpecifier;

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public satisfiedBy(Landroid/net/NetworkSpecifier;)Z
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "MatchAllNetworkSpecifier must not be used in NetworkRequests"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
