.class final Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;
    .locals 6

    .line 2
    new-instance v0, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;-><init>(Landroid/appwidget/AppWidgetHostView$1;)V

    .line 3
    const-class v1, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray$1;->createFromParcel(Landroid/os/Parcel;)Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;
    .locals 0

    .line 2
    new-array p1, p1, [Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray$1;->newArray(I)[Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;

    move-result-object p1

    return-object p1
.end method
