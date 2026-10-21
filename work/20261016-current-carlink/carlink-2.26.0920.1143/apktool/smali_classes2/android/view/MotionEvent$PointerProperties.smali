.class public final Landroid/view/MotionEvent$PointerProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerProperties"
.end annotation


# instance fields
.field public id:I

.field public toolType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    return-void
.end method

.method public constructor <init>(Landroid/view/MotionEvent$PointerProperties;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent$PointerProperties;->copyFrom(Landroid/view/MotionEvent$PointerProperties;)V

    return-void
.end method

.method public static synthetic access$000(Landroid/view/MotionEvent$PointerProperties;Landroid/view/MotionEvent$PointerProperties;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/MotionEvent$PointerProperties;->equals(Landroid/view/MotionEvent$PointerProperties;)Z

    move-result p0

    return p0
.end method

.method public static createArray(I)[Landroid/view/MotionEvent$PointerProperties;
    .locals 3

    .line 1
    new-array v0, p0, [Landroid/view/MotionEvent$PointerProperties;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    if-ge v1, p0, :cond_0

    .line 5
    .line 6
    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    .line 7
    .line 8
    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 9
    .line 10
    .line 11
    aput-object v2, v0, v1

    .line 12
    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-object v0
.end method

.method private equals(Landroid/view/MotionEvent$PointerProperties;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 3
    iget v0, p0, Landroid/view/MotionEvent$PointerProperties;->id:I

    iget v1, p1, Landroid/view/MotionEvent$PointerProperties;->id:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    iget p1, p1, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 6
    .line 7
    return-void
.end method

.method public copyFrom(Landroid/view/MotionEvent$PointerProperties;)V
    .locals 1

    .line 1
    iget v0, p1, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 2
    .line 3
    iput v0, p0, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 4
    .line 5
    iget p1, p1, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 6
    .line 7
    iput p1, p0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 8
    .line 9
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/view/MotionEvent$PointerProperties;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {p0, p1}, Landroid/view/MotionEvent$PointerProperties;->equals(Landroid/view/MotionEvent$PointerProperties;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroid/view/MotionEvent$PointerProperties;->id:I

    iget v1, p0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method
