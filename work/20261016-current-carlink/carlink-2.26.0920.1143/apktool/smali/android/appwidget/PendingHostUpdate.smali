.class public Landroid/appwidget/PendingHostUpdate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/appwidget/PendingHostUpdate;",
            ">;"
        }
    .end annotation
.end field

.field static final TYPE_PROVIDER_CHANGED:I = 0x1

.field static final TYPE_VIEWS_UPDATE:I = 0x0

.field static final TYPE_VIEW_DATA_CHANGED:I = 0x2


# instance fields
.field final appWidgetId:I

.field final type:I

.field viewId:I

.field views:Landroid/widget/RemoteViews;

.field widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/appwidget/PendingHostUpdate$1;

    invoke-direct {v0}, Landroid/appwidget/PendingHostUpdate$1;-><init>()V

    sput-object v0, Landroid/appwidget/PendingHostUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    .line 4
    iput p2, p0, Landroid/appwidget/PendingHostUpdate;->type:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/PendingHostUpdate;->type:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/appwidget/PendingHostUpdate;->viewId:I

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    new-instance v0, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v0, p1}, Landroid/appwidget/AppWidgetProviderInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/appwidget/PendingHostUpdate;->widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-direct {v0, p1}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/appwidget/PendingHostUpdate;->views:Landroid/widget/RemoteViews;

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/appwidget/PendingHostUpdate$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/appwidget/PendingHostUpdate;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/PendingHostUpdate;
    .locals 2

    .line 1
    new-instance v0, Landroid/appwidget/PendingHostUpdate;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Landroid/appwidget/PendingHostUpdate;-><init>(II)V

    .line 5
    .line 6
    .line 7
    iput-object p1, v0, Landroid/appwidget/PendingHostUpdate;->widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 8
    .line 9
    return-object v0
.end method

.method public static updateAppWidget(ILandroid/widget/RemoteViews;)Landroid/appwidget/PendingHostUpdate;
    .locals 2

    .line 1
    new-instance v0, Landroid/appwidget/PendingHostUpdate;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Landroid/appwidget/PendingHostUpdate;-><init>(II)V

    .line 5
    .line 6
    .line 7
    iput-object p1, v0, Landroid/appwidget/PendingHostUpdate;->views:Landroid/widget/RemoteViews;

    .line 8
    .line 9
    return-object v0
.end method

.method public static viewDataChanged(II)Landroid/appwidget/PendingHostUpdate;
    .locals 2

    .line 1
    new-instance v0, Landroid/appwidget/PendingHostUpdate;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, p0, v1}, Landroid/appwidget/PendingHostUpdate;-><init>(II)V

    .line 5
    .line 6
    .line 7
    iput p1, v0, Landroid/appwidget/PendingHostUpdate;->viewId:I

    .line 8
    .line 9
    return-object v0
.end method

.method private writeNullParcelable(Landroid/os/Parcelable;Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, p2, p3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    .line 14
    .line 15
    :goto_0
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
    iget v0, p0, Landroid/appwidget/PendingHostUpdate;->appWidgetId:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroid/appwidget/PendingHostUpdate;->type:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Landroid/appwidget/PendingHostUpdate;->type:I

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    const/4 p2, 0x2

    .line 19
    if-eq v0, p2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget p2, p0, Landroid/appwidget/PendingHostUpdate;->viewId:I

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, p0, Landroid/appwidget/PendingHostUpdate;->widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 29
    .line 30
    invoke-direct {p0, v0, p1, p2}, Landroid/appwidget/PendingHostUpdate;->writeNullParcelable(Landroid/os/Parcelable;Landroid/os/Parcel;I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget-object v0, p0, Landroid/appwidget/PendingHostUpdate;->views:Landroid/widget/RemoteViews;

    .line 35
    .line 36
    invoke-direct {p0, v0, p1, p2}, Landroid/appwidget/PendingHostUpdate;->writeNullParcelable(Landroid/os/Parcelable;Landroid/os/Parcel;I)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method
