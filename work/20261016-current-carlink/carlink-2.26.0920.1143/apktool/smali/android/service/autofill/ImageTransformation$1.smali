.class final Landroid/service/autofill/ImageTransformation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/ImageTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/ImageTransformation;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/ImageTransformation;
    .locals 6

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillId;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, [Ljava/util/regex/Pattern;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 5
    new-instance v2, Landroid/service/autofill/ImageTransformation$Builder;

    const/4 v3, 0x0

    aget-object v4, v1, v3

    aget v3, p1, v3

    invoke-direct {v2, v0, v4, v3}, Landroid/service/autofill/ImageTransformation$Builder;-><init>(Landroid/view/autofill/AutofillId;Ljava/util/regex/Pattern;I)V

    .line 6
    array-length v0, v1

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v0, :cond_0

    .line 7
    aget-object v4, v1, v3

    aget v5, p1, v3

    invoke-virtual {v2, v4, v5}, Landroid/service/autofill/ImageTransformation$Builder;->addOption(Ljava/util/regex/Pattern;I)Landroid/service/autofill/ImageTransformation$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v2}, Landroid/service/autofill/ImageTransformation$Builder;->build()Landroid/service/autofill/ImageTransformation;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/service/autofill/ImageTransformation$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/ImageTransformation;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/service/autofill/ImageTransformation;
    .locals 0

    .line 2
    new-array p1, p1, [Landroid/service/autofill/ImageTransformation;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/service/autofill/ImageTransformation$1;->newArray(I)[Landroid/service/autofill/ImageTransformation;

    move-result-object p1

    return-object p1
.end method
