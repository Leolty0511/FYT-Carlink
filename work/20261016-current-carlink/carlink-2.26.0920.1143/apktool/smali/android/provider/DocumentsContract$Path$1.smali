.class final Landroid/provider/DocumentsContract$Path$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/DocumentsContract$Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/provider/DocumentsContract$Path;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/provider/DocumentsContract$Path;
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 4
    new-instance v1, Landroid/provider/DocumentsContract$Path;

    invoke-direct {v1, v0, p1}, Landroid/provider/DocumentsContract$Path;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/provider/DocumentsContract$Path$1;->createFromParcel(Landroid/os/Parcel;)Landroid/provider/DocumentsContract$Path;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/provider/DocumentsContract$Path;
    .locals 0

    .line 2
    new-array p1, p1, [Landroid/provider/DocumentsContract$Path;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/provider/DocumentsContract$Path$1;->newArray(I)[Landroid/provider/DocumentsContract$Path;

    move-result-object p1

    return-object p1
.end method
