.class public Landroid/graphics/RectF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bottom:F

.field public left:F

.field public right:F

.field public top:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/RectF$1;

    invoke-direct {v0}, Landroid/graphics/RectF$1;-><init>()V

    sput-object v0, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/graphics/RectF;->left:F

    .line 3
    iput p2, p0, Landroid/graphics/RectF;->top:F

    .line 4
    iput p3, p0, Landroid/graphics/RectF;->right:F

    .line 5
    iput p4, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    iput p1, p0, Landroid/graphics/RectF;->right:F

    iput p1, p0, Landroid/graphics/RectF;->top:F

    iput p1, p0, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 14
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 15
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 16
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 17
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/graphics/RectF;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    iput p1, p0, Landroid/graphics/RectF;->right:F

    iput p1, p0, Landroid/graphics/RectF;->top:F

    iput p1, p0, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 8
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 9
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 10
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 11
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    :goto_0
    return-void
.end method

.method public static intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 2

    .line 2
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final centerX()F
    .locals 2

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    return v0
.end method

.method public final centerY()F
    .locals 2

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    return v0
.end method

.method public contains(FF)Z
    .locals 5

    .line 1
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    iget v2, p0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v4, v2, v3

    if-gez v4, :cond_0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    cmpl-float p1, p2, v2

    if-ltz p1, :cond_0

    cmpg-float p1, p2, v3

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public contains(FFFF)Z
    .locals 5

    .line 2
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    iget v2, p0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v4, v2, v3

    if-gez v4, :cond_0

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_0

    cmpg-float p1, v2, p2

    if-gtz p1, :cond_0

    cmpl-float p1, v1, p3

    if-ltz p1, :cond_0

    cmpl-float p1, v3, p4

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public contains(Landroid/graphics/RectF;)Z
    .locals 5

    .line 3
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    iget v2, p0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v4, v2, v3

    if-gez v4, :cond_0

    iget v4, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_0

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float p1, v3, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    check-cast p1, Landroid/graphics/RectF;

    .line 20
    .line 21
    iget v2, p0, Landroid/graphics/RectF;->left:F

    .line 22
    .line 23
    iget v3, p1, Landroid/graphics/RectF;->left:F

    .line 24
    .line 25
    cmpl-float v2, v2, v3

    .line 26
    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    iget v2, p0, Landroid/graphics/RectF;->top:F

    .line 30
    .line 31
    iget v3, p1, Landroid/graphics/RectF;->top:F

    .line 32
    .line 33
    cmpl-float v2, v2, v3

    .line 34
    .line 35
    if-nez v2, :cond_2

    .line 36
    .line 37
    iget v2, p0, Landroid/graphics/RectF;->right:F

    .line 38
    .line 39
    iget v3, p1, Landroid/graphics/RectF;->right:F

    .line 40
    .line 41
    cmpl-float v2, v2, v3

    .line 42
    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    .line 46
    .line 47
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    .line 48
    .line 49
    cmpl-float p1, v2, p1

    .line 50
    .line 51
    if-nez p1, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    move v0, v1

    .line 55
    :goto_0
    return v0

    .line 56
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget v0, p0, Landroid/graphics/RectF;->left:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v2, v0, v1

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v3

    .line 15
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 16
    .line 17
    iget v2, p0, Landroid/graphics/RectF;->top:F

    .line 18
    .line 19
    cmpl-float v4, v2, v1

    .line 20
    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v2, v3

    .line 29
    :goto_1
    add-int/2addr v0, v2

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    .line 32
    iget v2, p0, Landroid/graphics/RectF;->right:F

    .line 33
    .line 34
    cmpl-float v4, v2, v1

    .line 35
    .line 36
    if-eqz v4, :cond_2

    .line 37
    .line 38
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    move v2, v3

    .line 44
    :goto_2
    add-int/2addr v0, v2

    .line 45
    mul-int/lit8 v0, v0, 0x1f

    .line 46
    .line 47
    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    .line 48
    .line 49
    cmpl-float v1, v2, v1

    .line 50
    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    :cond_3
    add-int/2addr v0, v3

    .line 58
    return v0
.end method

.method public final height()F
    .locals 2

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public inset(FF)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/RectF;->left:F

    .line 2
    .line 3
    add-float/2addr v0, p1

    .line 4
    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 5
    .line 6
    iget v0, p0, Landroid/graphics/RectF;->top:F

    .line 7
    .line 8
    add-float/2addr v0, p2

    .line 9
    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 10
    .line 11
    iget v0, p0, Landroid/graphics/RectF;->right:F

    .line 12
    .line 13
    sub-float/2addr v0, p1

    .line 14
    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 15
    .line 16
    iget p1, p0, Landroid/graphics/RectF;->bottom:F

    .line 17
    .line 18
    sub-float/2addr p1, p2

    .line 19
    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    .line 20
    .line 21
    return-void
.end method

.method public intersect(FFFF)Z
    .locals 5

    .line 1
    iget v0, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v0, p3

    if-gez v1, :cond_4

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v2, p1, v1

    if-gez v2, :cond_4

    iget v2, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v3, v2, p4

    if-gez v3, :cond_4

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v4, p2, v3

    if-gez v4, :cond_4

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    .line 2
    iput p1, p0, Landroid/graphics/RectF;->left:F

    :cond_0
    cmpg-float p1, v2, p2

    if-gez p1, :cond_1

    .line 3
    iput p2, p0, Landroid/graphics/RectF;->top:F

    :cond_1
    cmpl-float p1, v1, p3

    if-lez p1, :cond_2

    .line 4
    iput p3, p0, Landroid/graphics/RectF;->right:F

    :cond_2
    cmpl-float p1, v3, p4

    if-lez p1, :cond_3

    .line 5
    iput p4, p0, Landroid/graphics/RectF;->bottom:F

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public intersect(Landroid/graphics/RectF;)Z
    .locals 3

    .line 6
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result p1

    return p1
.end method

.method public intersects(FFFF)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/RectF;->left:F

    cmpg-float p3, v0, p3

    if-gez p3, :cond_0

    iget p3, p0, Landroid/graphics/RectF;->right:F

    cmpg-float p1, p1, p3

    if-gez p1, :cond_0

    iget p1, p0, Landroid/graphics/RectF;->top:F

    cmpg-float p1, p1, p4

    if-gez p1, :cond_0

    iget p1, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isEmpty()Z
    .locals 2

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public offset(FF)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/RectF;->left:F

    .line 2
    .line 3
    add-float/2addr v0, p1

    .line 4
    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 5
    .line 6
    iget v0, p0, Landroid/graphics/RectF;->top:F

    .line 7
    .line 8
    add-float/2addr v0, p2

    .line 9
    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 10
    .line 11
    iget v0, p0, Landroid/graphics/RectF;->right:F

    .line 12
    .line 13
    add-float/2addr v0, p1

    .line 14
    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 15
    .line 16
    iget p1, p0, Landroid/graphics/RectF;->bottom:F

    .line 17
    .line 18
    add-float/2addr p1, p2

    .line 19
    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    .line 20
    .line 21
    return-void
.end method

.method public offsetTo(FF)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/graphics/RectF;->right:F

    .line 2
    .line 3
    iget v1, p0, Landroid/graphics/RectF;->left:F

    .line 4
    .line 5
    sub-float v1, p1, v1

    .line 6
    .line 7
    add-float/2addr v1, v0

    .line 8
    iput v1, p0, Landroid/graphics/RectF;->right:F

    .line 9
    .line 10
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 11
    .line 12
    iget v1, p0, Landroid/graphics/RectF;->top:F

    .line 13
    .line 14
    sub-float v1, p2, v1

    .line 15
    .line 16
    add-float/2addr v1, v0

    .line 17
    iput v1, p0, Landroid/graphics/RectF;->bottom:F

    .line 18
    .line 19
    iput p1, p0, Landroid/graphics/RectF;->left:F

    .line 20
    .line 21
    iput p2, p0, Landroid/graphics/RectF;->top:F

    .line 22
    .line 23
    return-void
.end method

.method public printShortString(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    const/16 v0, 0x5b

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroid/graphics/RectF;->left:F

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 9
    .line 10
    .line 11
    const/16 v0, 0x2c

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 14
    .line 15
    .line 16
    iget v1, p0, Landroid/graphics/RectF;->top:F

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 19
    .line 20
    .line 21
    const-string v1, "]["

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget v1, p0, Landroid/graphics/RectF;->right:F

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 32
    .line 33
    .line 34
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 37
    .line 38
    .line 39
    const/16 v0, 0x5d

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    .line 24
    .line 25
    return-void
.end method

.method public round(Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    iget v0, p0, Landroid/graphics/RectF;->left:F

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/internal/util/FastMath;->round(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Landroid/graphics/RectF;->top:F

    .line 8
    .line 9
    invoke-static {v1}, Lcom/android/internal/util/FastMath;->round(F)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget v2, p0, Landroid/graphics/RectF;->right:F

    .line 14
    .line 15
    invoke-static {v2}, Lcom/android/internal/util/FastMath;->round(F)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    .line 20
    .line 21
    invoke-static {v3}, Lcom/android/internal/util/FastMath;->round(F)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public roundOut(Landroid/graphics/Rect;)V
    .locals 5

    .line 1
    iget v0, p0, Landroid/graphics/RectF;->left:F

    .line 2
    .line 3
    float-to-double v0, v0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    double-to-int v0, v0

    .line 9
    iget v1, p0, Landroid/graphics/RectF;->top:F

    .line 10
    .line 11
    float-to-double v1, v1

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    double-to-int v1, v1

    .line 17
    iget v2, p0, Landroid/graphics/RectF;->right:F

    .line 18
    .line 19
    float-to-double v2, v2

    .line 20
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    double-to-int v2, v2

    .line 25
    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    .line 26
    .line 27
    float-to-double v3, v3

    .line 28
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    double-to-int v3, v3

    .line 33
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public scale(F)V
    .locals 1

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    cmpl-float v0, p1, v0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Landroid/graphics/RectF;->left:F

    .line 8
    .line 9
    mul-float/2addr v0, p1

    .line 10
    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 11
    .line 12
    iget v0, p0, Landroid/graphics/RectF;->top:F

    .line 13
    .line 14
    mul-float/2addr v0, p1

    .line 15
    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 16
    .line 17
    iget v0, p0, Landroid/graphics/RectF;->right:F

    .line 18
    .line 19
    mul-float/2addr v0, p1

    .line 20
    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 21
    .line 22
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 23
    .line 24
    mul-float/2addr v0, p1

    .line 25
    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public set(FFFF)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/graphics/RectF;->left:F

    .line 2
    iput p2, p0, Landroid/graphics/RectF;->top:F

    .line 3
    iput p3, p0, Landroid/graphics/RectF;->right:F

    .line 4
    iput p4, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public set(Landroid/graphics/Rect;)V
    .locals 1

    .line 9
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 10
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 11
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 12
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public set(Landroid/graphics/RectF;)V
    .locals 1

    .line 5
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 6
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 7
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 8
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public setEmpty()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    iput v0, p0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/graphics/RectF;->right:F

    iput v0, p0, Landroid/graphics/RectF;->left:F

    return-void
.end method

.method public setIntersect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 4

    .line 1
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 2
    .line 3
    iget v1, p2, Landroid/graphics/RectF;->right:F

    .line 4
    .line 5
    cmpg-float v1, v0, v1

    .line 6
    .line 7
    if-gez v1, :cond_0

    .line 8
    .line 9
    iget v1, p2, Landroid/graphics/RectF;->left:F

    .line 10
    .line 11
    iget v2, p1, Landroid/graphics/RectF;->right:F

    .line 12
    .line 13
    cmpg-float v2, v1, v2

    .line 14
    .line 15
    if-gez v2, :cond_0

    .line 16
    .line 17
    iget v2, p1, Landroid/graphics/RectF;->top:F

    .line 18
    .line 19
    iget v3, p2, Landroid/graphics/RectF;->bottom:F

    .line 20
    .line 21
    cmpg-float v2, v2, v3

    .line 22
    .line 23
    if-gez v2, :cond_0

    .line 24
    .line 25
    iget v2, p2, Landroid/graphics/RectF;->top:F

    .line 26
    .line 27
    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    .line 28
    .line 29
    cmpg-float v2, v2, v3

    .line 30
    .line 31
    if-gez v2, :cond_0

    .line 32
    .line 33
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 38
    .line 39
    iget v0, p1, Landroid/graphics/RectF;->top:F

    .line 40
    .line 41
    iget v1, p2, Landroid/graphics/RectF;->top:F

    .line 42
    .line 43
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 48
    .line 49
    iget v0, p1, Landroid/graphics/RectF;->right:F

    .line 50
    .line 51
    iget v1, p2, Landroid/graphics/RectF;->right:F

    .line 52
    .line 53
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 58
    .line 59
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    .line 60
    .line 61
    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    .line 62
    .line 63
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    .line 68
    .line 69
    const/4 p1, 0x1

    .line 70
    return p1

    .line 71
    :cond_0
    const/4 p1, 0x0

    .line 72
    return p1
.end method

.method public sort()V
    .locals 3

    .line 1
    iget v0, p0, Landroid/graphics/RectF;->left:F

    .line 2
    .line 3
    iget v1, p0, Landroid/graphics/RectF;->right:F

    .line 4
    .line 5
    cmpl-float v2, v0, v1

    .line 6
    .line 7
    if-lez v2, :cond_0

    .line 8
    .line 9
    iput v1, p0, Landroid/graphics/RectF;->left:F

    .line 10
    .line 11
    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 12
    .line 13
    :cond_0
    iget v0, p0, Landroid/graphics/RectF;->top:F

    .line 14
    .line 15
    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    .line 16
    .line 17
    cmpl-float v2, v0, v1

    .line 18
    .line 19
    if-lez v2, :cond_1

    .line 20
    .line 21
    iput v1, p0, Landroid/graphics/RectF;->top:F

    .line 22
    .line 23
    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/graphics/RectF;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v0, 0x5b

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    iget v1, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "RectF("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroid/graphics/RectF;->left:F

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v2, p0, Landroid/graphics/RectF;->top:F

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget v2, p0, Landroid/graphics/RectF;->right:F

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    .line 35
    .line 36
    const-string v2, ")"

    .line 37
    .line 38
    invoke-static {v0, v1, v2}, Landroid/app/m;->i(Ljava/lang/StringBuilder;FLjava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method

.method public union(FF)V
    .locals 1

    .line 11
    iget v0, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 12
    iput p1, p0, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 13
    :cond_0
    iget v0, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 14
    iput p1, p0, Landroid/graphics/RectF;->right:F

    .line 15
    :cond_1
    :goto_0
    iget p1, p0, Landroid/graphics/RectF;->top:F

    cmpg-float p1, p2, p1

    if-gez p1, :cond_2

    .line 16
    iput p2, p0, Landroid/graphics/RectF;->top:F

    goto :goto_1

    .line 17
    :cond_2
    iget p1, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float p1, p2, p1

    if-lez p1, :cond_3

    .line 18
    iput p2, p0, Landroid/graphics/RectF;->bottom:F

    :cond_3
    :goto_1
    return-void
.end method

.method public union(FFFF)V
    .locals 5

    cmpg-float v0, p1, p3

    if-gez v0, :cond_4

    cmpg-float v0, p2, p4

    if-gez v0, :cond_4

    .line 1
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_3

    iget v2, p0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v4, v2, v3

    if-gez v4, :cond_3

    cmpl-float v0, v0, p1

    if-lez v0, :cond_0

    .line 2
    iput p1, p0, Landroid/graphics/RectF;->left:F

    :cond_0
    cmpl-float p1, v2, p2

    if-lez p1, :cond_1

    .line 3
    iput p2, p0, Landroid/graphics/RectF;->top:F

    :cond_1
    cmpg-float p1, v1, p3

    if-gez p1, :cond_2

    .line 4
    iput p3, p0, Landroid/graphics/RectF;->right:F

    :cond_2
    cmpg-float p1, v3, p4

    if-gez p1, :cond_4

    .line 5
    iput p4, p0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 6
    :cond_3
    iput p1, p0, Landroid/graphics/RectF;->left:F

    .line 7
    iput p2, p0, Landroid/graphics/RectF;->top:F

    .line 8
    iput p3, p0, Landroid/graphics/RectF;->right:F

    .line 9
    iput p4, p0, Landroid/graphics/RectF;->bottom:F

    :cond_4
    :goto_0
    return-void
.end method

.method public union(Landroid/graphics/RectF;)V
    .locals 3

    .line 10
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/graphics/RectF;->union(FFFF)V

    return-void
.end method

.method public final width()F
    .locals 2

    iget v0, p0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/graphics/RectF;->left:F

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/graphics/RectF;->top:F

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/graphics/RectF;->right:F

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Landroid/graphics/RectF;->bottom:F

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
