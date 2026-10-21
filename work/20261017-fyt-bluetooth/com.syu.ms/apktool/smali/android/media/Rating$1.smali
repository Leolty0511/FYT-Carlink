.class final Landroid/media/Rating$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Rating;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/Rating;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/Rating;
    .locals 3

    .line 2
    new-instance v0, Landroid/media/Rating;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Landroid/media/Rating;-><init>(IFLandroid/media/Rating$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/Rating$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/Rating;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/media/Rating;
    .locals 0

    .line 2
    new-array p1, p1, [Landroid/media/Rating;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/Rating$1;->newArray(I)[Landroid/media/Rating;

    move-result-object p1

    return-object p1
.end method
