.class public final Landroid/nfc/BeamShareData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/nfc/BeamShareData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final flags:I

.field public final ndefMessage:Landroid/nfc/NdefMessage;

.field public final uris:[Landroid/net/Uri;

.field public final userHandle:Landroid/os/UserHandle;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/nfc/BeamShareData$1;

    invoke-direct {v0}, Landroid/nfc/BeamShareData$1;-><init>()V

    sput-object v0, Landroid/nfc/BeamShareData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;Landroid/os/UserHandle;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/nfc/BeamShareData;->ndefMessage:Landroid/nfc/NdefMessage;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    .line 7
    .line 8
    iput-object p3, p0, Landroid/nfc/BeamShareData;->userHandle:Landroid/os/UserHandle;

    .line 9
    .line 10
    iput p4, p0, Landroid/nfc/BeamShareData;->flags:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    array-length p2, p2

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move p2, v0

    .line 9
    :goto_0
    iget-object v1, p0, Landroid/nfc/BeamShareData;->ndefMessage:Landroid/nfc/NdefMessage;

    .line 10
    .line 11
    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    .line 16
    .line 17
    if-lez p2, :cond_1

    .line 18
    .line 19
    iget-object p2, p0, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    .line 20
    .line 21
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object p2, p0, Landroid/nfc/BeamShareData;->userHandle:Landroid/os/UserHandle;

    .line 25
    .line 26
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 27
    .line 28
    .line 29
    iget p2, p0, Landroid/nfc/BeamShareData;->flags:I

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
