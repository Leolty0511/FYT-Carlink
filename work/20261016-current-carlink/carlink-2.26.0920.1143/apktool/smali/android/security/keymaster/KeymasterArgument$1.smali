.class final Landroid/security/keymaster/KeymasterArgument$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keymaster/KeymasterArgument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/security/keymaster/KeymasterArgument;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/security/keymaster/KeymasterArgument;
    .locals 4

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4
    invoke-static {v1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v2

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_4

    const/high16 v3, -0x70000000

    if-eq v2, v3, :cond_4

    const/high16 v3, -0x60000000

    if-eq v2, v3, :cond_3

    const/high16 v3, 0x10000000

    if-eq v2, v3, :cond_2

    const/high16 v3, 0x20000000

    if-eq v2, v3, :cond_2

    const/high16 v3, 0x30000000

    if-eq v2, v3, :cond_2

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v2, v3, :cond_2

    const/high16 v3, 0x50000000

    if-eq v2, v3, :cond_3

    const/high16 v3, 0x60000000

    if-eq v2, v3, :cond_1

    const/high16 v3, 0x70000000

    if-ne v2, v3, :cond_0

    .line 5
    new-instance v0, Landroid/security/keymaster/KeymasterBooleanArgument;

    invoke-direct {v0, v1, p1}, Landroid/security/keymaster/KeymasterBooleanArgument;-><init>(ILandroid/os/Parcel;)V

    return-object v0

    .line 6
    :cond_0
    new-instance p1, Landroid/os/ParcelFormatException;

    const-string v2, "Bad tag: "

    const-string v3, " at "

    .line 7
    invoke-static {v2, v1, v3, v0}, Landroid/app/m;->e(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-direct {p1, v0}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance v0, Landroid/security/keymaster/KeymasterDateArgument;

    invoke-direct {v0, v1, p1}, Landroid/security/keymaster/KeymasterDateArgument;-><init>(ILandroid/os/Parcel;)V

    return-object v0

    .line 10
    :cond_2
    new-instance v0, Landroid/security/keymaster/KeymasterIntArgument;

    invoke-direct {v0, v1, p1}, Landroid/security/keymaster/KeymasterIntArgument;-><init>(ILandroid/os/Parcel;)V

    return-object v0

    .line 11
    :cond_3
    new-instance v0, Landroid/security/keymaster/KeymasterLongArgument;

    invoke-direct {v0, v1, p1}, Landroid/security/keymaster/KeymasterLongArgument;-><init>(ILandroid/os/Parcel;)V

    return-object v0

    .line 12
    :cond_4
    new-instance v0, Landroid/security/keymaster/KeymasterBlobArgument;

    invoke-direct {v0, v1, p1}, Landroid/security/keymaster/KeymasterBlobArgument;-><init>(ILandroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/security/keymaster/KeymasterArgument$1;->createFromParcel(Landroid/os/Parcel;)Landroid/security/keymaster/KeymasterArgument;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/security/keymaster/KeymasterArgument;
    .locals 0

    .line 2
    new-array p1, p1, [Landroid/security/keymaster/KeymasterArgument;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/security/keymaster/KeymasterArgument$1;->newArray(I)[Landroid/security/keymaster/KeymasterArgument;

    move-result-object p1

    return-object p1
.end method
