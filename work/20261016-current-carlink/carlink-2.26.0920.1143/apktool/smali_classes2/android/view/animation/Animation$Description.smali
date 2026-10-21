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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;
    .locals 5

    .line 1
    new-instance v0, Landroid/view/animation/Animation$Description;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/animation/Animation$Description;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    iput v2, v0, Landroid/view/animation/Animation$Description;->type:I

    .line 11
    .line 12
    iput v1, v0, Landroid/view/animation/Animation$Description;->value:F

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget v3, p0, Landroid/util/TypedValue;->type:I

    .line 16
    .line 17
    const/4 v4, 0x6

    .line 18
    if-ne v3, v4, :cond_2

    .line 19
    .line 20
    iget p0, p0, Landroid/util/TypedValue;->data:I

    .line 21
    .line 22
    and-int/lit8 v1, p0, 0xf

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    if-ne v1, v2, :cond_1

    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    :cond_1
    iput v2, v0, Landroid/view/animation/Animation$Description;->type:I

    .line 29
    .line 30
    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    iput p0, v0, Landroid/view/animation/Animation$Description;->value:F

    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_2
    const/4 v4, 0x4

    .line 38
    if-ne v3, v4, :cond_3

    .line 39
    .line 40
    iput v2, v0, Landroid/view/animation/Animation$Description;->type:I

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/util/TypedValue;->getFloat()F

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    iput p0, v0, Landroid/view/animation/Animation$Description;->value:F

    .line 47
    .line 48
    return-object v0

    .line 49
    :cond_3
    const/16 v4, 0x10

    .line 50
    .line 51
    if-lt v3, v4, :cond_4

    .line 52
    .line 53
    const/16 v4, 0x1f

    .line 54
    .line 55
    if-gt v3, v4, :cond_4

    .line 56
    .line 57
    iput v2, v0, Landroid/view/animation/Animation$Description;->type:I

    .line 58
    .line 59
    iget p0, p0, Landroid/util/TypedValue;->data:I

    .line 60
    .line 61
    int-to-float p0, p0

    .line 62
    iput p0, v0, Landroid/view/animation/Animation$Description;->value:F

    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_4
    :goto_0
    iput v2, v0, Landroid/view/animation/Animation$Description;->type:I

    .line 66
    .line 67
    iput v1, v0, Landroid/view/animation/Animation$Description;->value:F

    .line 68
    .line 69
    return-object v0
.end method
