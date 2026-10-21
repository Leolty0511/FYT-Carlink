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


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/nfc/BeamShareData$1;

    invoke-direct {v0}, Landroid/nfc/BeamShareData$1;-><init>()V

    sput-object v0, Landroid/nfc/BeamShareData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/nfc/BeamShareData;->ndefMessage:Landroid/nfc/NdefMessage;

    .line 3
    iput-object p2, p0, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    .line 4
    iput p3, p0, Landroid/nfc/BeamShareData;->flags:I

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

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    array-length p2, p2

    goto :goto_0

    :cond_0
    move p2, v0

    .line 2
    :goto_0
    iget-object v1, p0, Landroid/nfc/BeamShareData;->ndefMessage:Landroid/nfc/NdefMessage;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    if-lez p2, :cond_1

    .line 4
    iget-object p2, p0, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 5
    :cond_1
    iget p2, p0, Landroid/nfc/BeamShareData;->flags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
