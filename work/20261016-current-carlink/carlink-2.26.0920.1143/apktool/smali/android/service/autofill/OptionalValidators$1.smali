.class final Landroid/service/autofill/OptionalValidators$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/OptionalValidators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/OptionalValidators;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/OptionalValidators;
    .locals 3

    .line 2
    new-instance v0, Landroid/service/autofill/OptionalValidators;

    const/4 v1, 0x0

    const-class v2, Landroid/service/autofill/InternalValidator;

    .line 3
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, [Landroid/service/autofill/InternalValidator;

    invoke-direct {v0, p1}, Landroid/service/autofill/OptionalValidators;-><init>([Landroid/service/autofill/InternalValidator;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/service/autofill/OptionalValidators$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/OptionalValidators;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/service/autofill/OptionalValidators;
    .locals 0

    .line 2
    new-array p1, p1, [Landroid/service/autofill/OptionalValidators;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/service/autofill/OptionalValidators$1;->newArray(I)[Landroid/service/autofill/OptionalValidators;

    move-result-object p1

    return-object p1
.end method
