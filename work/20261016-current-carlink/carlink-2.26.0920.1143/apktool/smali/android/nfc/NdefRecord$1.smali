.class final Landroid/nfc/NdefRecord$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/NdefRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/nfc/NdefRecord;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/nfc/NdefRecord;
    .locals 4

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4
    new-array v1, v1, [B

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7
    new-array v2, v2, [B

    .line 8
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 10
    new-array v3, v3, [B

    .line 11
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    .line 12
    new-instance p1, Landroid/nfc/NdefRecord;

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/nfc/NdefRecord$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/NdefRecord;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/nfc/NdefRecord;
    .locals 0

    .line 2
    new-array p1, p1, [Landroid/nfc/NdefRecord;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/nfc/NdefRecord$1;->newArray(I)[Landroid/nfc/NdefRecord;

    move-result-object p1

    return-object p1
.end method
