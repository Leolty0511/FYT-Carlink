.class final Landroid/service/autofill/CharSequenceTransformation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/CharSequenceTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/CharSequenceTransformation;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/CharSequenceTransformation;
    .locals 8

    const/4 v0, 0x0

    .line 2
    const-class v1, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, [Landroid/view/autofill/AutofillId;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, [Ljava/util/regex/Pattern;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v2, Landroid/service/autofill/CharSequenceTransformation$Builder;

    const/4 v3, 0x0

    aget-object v4, v0, v3

    aget-object v5, v1, v3

    aget-object v3, p1, v3

    invoke-direct {v2, v4, v5, v3}, Landroid/service/autofill/CharSequenceTransformation$Builder;-><init>(Landroid/view/autofill/AutofillId;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 6
    array-length v3, v0

    const/4 v4, 0x1

    :goto_0
    if-ge v4, v3, :cond_0

    .line 7
    aget-object v5, v0, v4

    aget-object v6, v1, v4

    aget-object v7, p1, v4

    invoke-virtual {v2, v5, v6, v7}, Landroid/service/autofill/CharSequenceTransformation$Builder;->addField(Landroid/view/autofill/AutofillId;Ljava/util/regex/Pattern;Ljava/lang/String;)Landroid/service/autofill/CharSequenceTransformation$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v2}, Landroid/service/autofill/CharSequenceTransformation$Builder;->build()Landroid/service/autofill/CharSequenceTransformation;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/service/autofill/CharSequenceTransformation$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/CharSequenceTransformation;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/service/autofill/CharSequenceTransformation;
    .locals 0

    .line 2
    new-array p1, p1, [Landroid/service/autofill/CharSequenceTransformation;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/service/autofill/CharSequenceTransformation$1;->newArray(I)[Landroid/service/autofill/CharSequenceTransformation;

    move-result-object p1

    return-object p1
.end method
