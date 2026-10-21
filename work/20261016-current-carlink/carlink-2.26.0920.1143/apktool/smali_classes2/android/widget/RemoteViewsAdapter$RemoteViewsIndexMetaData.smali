.class Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteViewsIndexMetaData"
.end annotation


# instance fields
.field itemId:J

.field typeId:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->set(Landroid/widget/RemoteViews;J)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public set(Landroid/widget/RemoteViews;J)V
    .locals 0

    .line 1
    iput-wide p2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->itemId:J

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iput p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->typeId:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    iput p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->typeId:I

    .line 14
    .line 15
    :goto_0
    return-void
.end method
