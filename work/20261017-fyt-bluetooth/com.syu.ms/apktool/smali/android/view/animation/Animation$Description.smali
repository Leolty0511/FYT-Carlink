.class public Landroid/view/animation/Animation$Description;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Description"
.end annotation


# instance fields
.field public type:I

.field public value:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;
    .locals 5

    .line 1
    new-instance v0, Landroid/view/animation/Animation$Description;

    invoke-direct {v0}, Landroid/view/animation/Animation$Description;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p0, :cond_0

    .line 2
    iput v2, v0, Landroid/view/animation/Animation$Description;->type:I

    .line 3
    iput v1, v0, Landroid/view/animation/Animation$Description;->value:F

    goto :goto_0

    .line 4
    :cond_0
    iget v3, p0, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    .line 5
    iget p0, p0, Landroid/util/TypedValue;->data:I

    and-int/lit8 v1, p0, 0xf

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v2, 0x2

    :cond_1
    iput v2, v0, Landroid/view/animation/Animation$Description;->type:I

    .line 6
    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result p0

    iput p0, v0, Landroid/view/animation/Animation$Description;->value:F

    return-object v0

    :cond_2
    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 7
    iput v2, v0, Landroid/view/animation/Animation$Description;->type:I

    .line 8
    invoke-virtual {p0}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    iput p0, v0, Landroid/view/animation/Animation$Description;->value:F

    return-object v0

    :cond_3
    const/16 v4, 0x10

    if-lt v3, v4, :cond_4

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_4

    .line 9
    iput v2, v0, Landroid/view/animation/Animation$Description;->type:I

    .line 10
    iget p0, p0, Landroid/util/TypedValue;->data:I

    int-to-float p0, p0

    iput p0, v0, Landroid/view/animation/Animation$Description;->value:F

    return-object v0

    .line 11
    :cond_4
    :goto_0
    iput v2, v0, Landroid/view/animation/Animation$Description;->type:I

    .line 12
    iput v1, v0, Landroid/view/animation/Animation$Description;->value:F

    return-object v0
.end method
