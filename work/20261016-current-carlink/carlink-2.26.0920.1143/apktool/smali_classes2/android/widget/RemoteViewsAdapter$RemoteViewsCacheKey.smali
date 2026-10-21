.class Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteViewsCacheKey"
.end annotation


# instance fields
.field final filter:Landroid/content/Intent$FilterComparison;

.field final widgetId:I


# direct methods
.method public constructor <init>(Landroid/content/Intent$FilterComparison;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->filter:Landroid/content/Intent$FilterComparison;

    .line 5
    .line 6
    iput p2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->widgetId:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    .line 8
    .line 9
    iget-object v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->filter:Landroid/content/Intent$FilterComparison;

    .line 10
    .line 11
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->filter:Landroid/content/Intent$FilterComparison;

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget p1, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->widgetId:I

    .line 20
    .line 21
    iget v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->widgetId:I

    .line 22
    .line 23
    if-ne p1, v0, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->filter:Landroid/content/Intent$FilterComparison;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent$FilterComparison;->hashCode()I

    move-result v0

    :goto_0
    iget v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->widgetId:I

    shl-int/lit8 v1, v1, 0x2

    xor-int/2addr v0, v1

    return v0
.end method
