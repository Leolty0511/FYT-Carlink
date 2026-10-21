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
.field public final filter:Landroid/content/Intent$FilterComparison;

.field public final userId:I

.field public final widgetId:I


# direct methods
.method public constructor <init>(Landroid/content/Intent$FilterComparison;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->filter:Landroid/content/Intent$FilterComparison;

    .line 3
    iput p2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->widgetId:I

    .line 4
    iput p3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->userId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    .line 3
    iget-object v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->filter:Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->filter:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v0, v2}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->widgetId:I

    iget v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->widgetId:I

    if-ne v0, v2, :cond_1

    iget p1, p1, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->userId:I

    iget v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->userId:I

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
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

    iget v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;->userId:I

    shl-int/lit8 v1, v1, 0xa

    xor-int/2addr v0, v1

    return v0
.end method
