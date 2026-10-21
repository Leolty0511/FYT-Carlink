.class public Landroid/hardware/Camera$Area;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Area"
.end annotation


# instance fields
.field public rect:Landroid/graphics/Rect;

.field public weight:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 3
    iput p2, p0, Landroid/hardware/Camera$Area;->weight:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/hardware/Camera$Area;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Landroid/hardware/Camera$Area;

    .line 3
    iget-object v0, p0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    return v1

    .line 5
    :cond_1
    iget-object v2, p1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 6
    :cond_2
    iget v0, p0, Landroid/hardware/Camera$Area;->weight:I

    iget p1, p1, Landroid/hardware/Camera$Area;->weight:I

    if-ne v0, p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method
