.class final Landroid/widget/Editor$EditOperation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$EditOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroid/widget/Editor$EditOperation;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/widget/Editor$EditOperation;
    .locals 2

    .line 3
    new-instance v0, Landroid/widget/Editor$EditOperation;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/widget/Editor$EditOperation;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/widget/Editor$EditOperation;
    .locals 1

    .line 4
    new-instance v0, Landroid/widget/Editor$EditOperation;

    invoke-direct {v0, p1, p2}, Landroid/widget/Editor$EditOperation;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/Editor$EditOperation$1;->createFromParcel(Landroid/os/Parcel;)Landroid/widget/Editor$EditOperation;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/widget/Editor$EditOperation$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/widget/Editor$EditOperation;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/widget/Editor$EditOperation;
    .locals 0

    .line 2
    new-array p1, p1, [Landroid/widget/Editor$EditOperation;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/Editor$EditOperation$1;->newArray(I)[Landroid/widget/Editor$EditOperation;

    move-result-object p1

    return-object p1
.end method
