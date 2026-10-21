.class final Landroid/content/ContentValues$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/ContentValues;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/ContentValues;
    .locals 2

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p1

    .line 3
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, p1, v0}, Landroid/content/ContentValues;-><init>(Ljava/util/HashMap;Landroid/content/ContentValues$1;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/ContentValues$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/content/ContentValues;
    .locals 0

    .line 2
    new-array p1, p1, [Landroid/content/ContentValues;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/ContentValues$1;->newArray(I)[Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method
