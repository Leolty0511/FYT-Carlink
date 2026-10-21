.class public Landroid/security/keymaster/KeyAttestationPackageInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/keymaster/KeyAttestationPackageInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mPackageSignatures:[Landroid/content/pm/Signature;

.field private final mPackageVersionCode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/security/keymaster/KeyAttestationPackageInfo$1;

    invoke-direct {v0}, Landroid/security/keymaster/KeyAttestationPackageInfo$1;-><init>()V

    sput-object v0, Landroid/security/keymaster/KeyAttestationPackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keymaster/KeyAttestationPackageInfo;->mPackageName:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/security/keymaster/KeyAttestationPackageInfo;->mPackageVersionCode:I

    .line 9
    sget-object v0, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/pm/Signature;

    iput-object p1, p0, Landroid/security/keymaster/KeyAttestationPackageInfo;->mPackageSignatures:[Landroid/content/pm/Signature;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/security/keymaster/KeyAttestationPackageInfo$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeyAttestationPackageInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[Landroid/content/pm/Signature;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/security/keymaster/KeyAttestationPackageInfo;->mPackageName:Ljava/lang/String;

    .line 4
    iput p2, p0, Landroid/security/keymaster/KeyAttestationPackageInfo;->mPackageVersionCode:I

    .line 5
    iput-object p3, p0, Landroid/security/keymaster/KeyAttestationPackageInfo;->mPackageSignatures:[Landroid/content/pm/Signature;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/security/keymaster/KeyAttestationPackageInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageSignatures()[Landroid/content/pm/Signature;
    .locals 1

    iget-object v0, p0, Landroid/security/keymaster/KeyAttestationPackageInfo;->mPackageSignatures:[Landroid/content/pm/Signature;

    return-object v0
.end method

.method public getPackageVersionCode()I
    .locals 1

    iget v0, p0, Landroid/security/keymaster/KeyAttestationPackageInfo;->mPackageVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/security/keymaster/KeyAttestationPackageInfo;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroid/security/keymaster/KeyAttestationPackageInfo;->mPackageVersionCode:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/security/keymaster/KeyAttestationPackageInfo;->mPackageSignatures:[Landroid/content/pm/Signature;

    .line 12
    .line 13
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
