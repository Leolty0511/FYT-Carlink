.class public Landroid/net/wifi/PasspointManagementObjectDefinition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/PasspointManagementObjectDefinition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBaseUri:Ljava/lang/String;

.field private final mMoTree:Ljava/lang/String;

.field private final mUrn:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/PasspointManagementObjectDefinition$1;

    invoke-direct {v0}, Landroid/net/wifi/PasspointManagementObjectDefinition$1;-><init>()V

    sput-object v0, Landroid/net/wifi/PasspointManagementObjectDefinition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/net/wifi/PasspointManagementObjectDefinition;->mBaseUri:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/net/wifi/PasspointManagementObjectDefinition;->mUrn:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Landroid/net/wifi/PasspointManagementObjectDefinition;->mMoTree:Ljava/lang/String;

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

.method public getBaseUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/PasspointManagementObjectDefinition;->mBaseUri:Ljava/lang/String;

    return-object v0
.end method

.method public getMoTree()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/PasspointManagementObjectDefinition;->mMoTree:Ljava/lang/String;

    return-object v0
.end method

.method public getUrn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/PasspointManagementObjectDefinition;->mUrn:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Landroid/net/wifi/PasspointManagementObjectDefinition;->mBaseUri:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Landroid/net/wifi/PasspointManagementObjectDefinition;->mUrn:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Landroid/net/wifi/PasspointManagementObjectDefinition;->mMoTree:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
