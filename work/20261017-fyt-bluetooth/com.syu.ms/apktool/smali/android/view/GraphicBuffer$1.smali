.class final Landroid/view/GraphicBuffer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/GraphicBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/GraphicBuffer;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/GraphicBuffer;
    .locals 7

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 6
    invoke-static {p1}, Landroid/view/GraphicBuffer;->access$000(Landroid/os/Parcel;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 7
    new-instance p1, Landroid/view/GraphicBuffer;

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/GraphicBuffer;-><init>(IIIIILandroid/view/GraphicBuffer$1;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/GraphicBuffer$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/GraphicBuffer;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/view/GraphicBuffer;
    .locals 0

    .line 2
    new-array p1, p1, [Landroid/view/GraphicBuffer;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/GraphicBuffer$1;->newArray(I)[Landroid/view/GraphicBuffer;

    move-result-object p1

    return-object p1
.end method
