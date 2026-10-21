.class final Landroid/telephony/RadioAccessFamily$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/RadioAccessFamily;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/RadioAccessFamily;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/RadioAccessFamily;
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4
    new-instance v1, Landroid/telephony/RadioAccessFamily;

    invoke-direct {v1, v0, p1}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/telephony/RadioAccessFamily$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/RadioAccessFamily;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/telephony/RadioAccessFamily;
    .locals 0

    .line 2
    new-array p1, p1, [Landroid/telephony/RadioAccessFamily;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/telephony/RadioAccessFamily$1;->newArray(I)[Landroid/telephony/RadioAccessFamily;

    move-result-object p1

    return-object p1
.end method
