.class public Landroid/hardware/camera2/legacy/SizeAreaComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/hardware/Camera$Size;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findLargestByArea(Ljava/util/List;)Landroid/hardware/Camera$Size;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .line 1
    const-string/jumbo v0, "sizes must not be null"

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    new-instance v0, Landroid/hardware/camera2/legacy/SizeAreaComparator;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/hardware/camera2/legacy/SizeAreaComparator;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroid/hardware/Camera$Size;

    .line 17
    .line 18
    return-object p0
.end method


# virtual methods
.method public compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I
    .locals 6

    const-string/jumbo v0, "size must not be null"

    .line 2
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "size2 must not be null"

    .line 3
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_0
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    int-to-long v0, v0

    .line 6
    iget v2, p2, Landroid/hardware/Camera$Size;->width:I

    int-to-long v2, v2

    .line 7
    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    int-to-long v4, p1

    mul-long/2addr v4, v0

    .line 8
    iget p1, p2, Landroid/hardware/Camera$Size;->height:I

    int-to-long p1, p1

    mul-long/2addr p1, v2

    cmp-long p1, v4, p1

    const/4 p2, 0x1

    const/4 v4, -0x1

    if-nez p1, :cond_2

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    move p2, v4

    :goto_0
    return p2

    :cond_2
    if-lez p1, :cond_3

    goto :goto_1

    :cond_3
    move p2, v4

    :goto_1
    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/hardware/Camera$Size;

    check-cast p2, Landroid/hardware/Camera$Size;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/legacy/SizeAreaComparator;->compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I

    move-result p1

    return p1
.end method
