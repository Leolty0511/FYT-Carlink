.class public final Landroid/graphics/Rect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Rect$UnflattenHelper;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bottom:I

.field public left:I

.field public right:I

.field public top:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect$1;

    invoke-direct {v0}, Landroid/graphics/Rect$1;-><init>()V

    sput-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 3
    iput p2, p0, Landroid/graphics/Rect;->top:I

    .line 4
    iput p3, p0, Landroid/graphics/Rect;->right:I

    .line 5
    iput p4, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Landroid/graphics/Rect;->right:I

    iput p1, p0, Landroid/graphics/Rect;->top:I

    iput p1, p0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 8
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 9
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 10
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 11
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    :goto_0
    return-void
.end method

.method public static intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2

    .line 2
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_0

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 5

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-static {p0}, Landroid/graphics/Rect$UnflattenHelper;->getMatcher(Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x2

    .line 32
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/4 v3, 0x3

    .line 41
    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    const/4 v4, 0x4

    .line 50
    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 59
    .line 60
    .line 61
    return-object v0
.end method


# virtual methods
.method public final centerX()I
    .locals 2

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final centerY()I
    .locals 2

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public contains(II)Z
    .locals 4

    .line 1
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_0

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_0

    if-lt p1, v0, :cond_0

    if-ge p1, v1, :cond_0

    if-lt p2, v2, :cond_0

    if-ge p2, v3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public contains(IIII)Z
    .locals 4

    .line 2
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_0

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_0

    if-gt v0, p1, :cond_0

    if-gt v2, p2, :cond_0

    if-lt v1, p3, :cond_0

    if-lt v3, p4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public contains(Landroid/graphics/Rect;)Z
    .locals 5

    .line 3
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_0

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_0

    iget v4, p1, Landroid/graphics/Rect;->left:I

    if-gt v0, v4, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-gt v2, v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-lt v1, v0, :cond_0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-lt v3, p1, :cond_0

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
    const-class v2, Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    check-cast p1, Landroid/graphics/Rect;

    .line 18
    .line 19
    iget v2, p0, Landroid/graphics/Rect;->left:I

    .line 20
    .line 21
    iget v3, p1, Landroid/graphics/Rect;->left:I

    .line 22
    .line 23
    if-ne v2, v3, :cond_2

    .line 24
    .line 25
    iget v2, p0, Landroid/graphics/Rect;->top:I

    .line 26
    .line 27
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 28
    .line 29
    if-ne v2, v3, :cond_2

    .line 30
    .line 31
    iget v2, p0, Landroid/graphics/Rect;->right:I

    .line 32
    .line 33
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 34
    .line 35
    if-ne v2, v3, :cond_2

    .line 36
    .line 37
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    .line 38
    .line 39
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 40
    .line 41
    if-ne v2, p1, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    move v0, v1

    .line 45
    :goto_0
    return v0

    .line 46
    :cond_3
    :goto_1
    return v1
.end method

.method public final exactCenterX()F
    .locals 2

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    return v0
.end method

.method public final exactCenterY()F
    .locals 2

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    return v0
.end method

.method public flattenToString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget v2, p0, Landroid/graphics/Rect;->left:I

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget v2, p0, Landroid/graphics/Rect;->top:I

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget v2, p0, Landroid/graphics/Rect;->right:I

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget v1, p0, Landroid/graphics/Rect;->right:I

    .line 11
    .line 12
    add-int/2addr v0, v1

    .line 13
    mul-int/lit8 v0, v0, 0x1f

    .line 14
    .line 15
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 16
    .line 17
    add-int/2addr v0, v1

    .line 18
    return v0
.end method

.method public final height()I
    .locals 2

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public inset(II)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 2
    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 3
    iget v0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 4
    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public inset(IIII)V
    .locals 1

    .line 9
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 10
    iget p1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p2

    iput p1, p0, Landroid/graphics/Rect;->top:I

    .line 11
    iget p1, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p3

    iput p1, p0, Landroid/graphics/Rect;->right:I

    .line 12
    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p4

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public inset(Landroid/graphics/Rect;)V
    .locals 2

    .line 5
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 6
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 7
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 8
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public intersect(IIII)Z
    .locals 4

    .line 1
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ge v0, p3, :cond_4

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-ge p1, v1, :cond_4

    iget v2, p0, Landroid/graphics/Rect;->top:I

    if-ge v2, p4, :cond_4

    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    if-ge p2, v3, :cond_4

    if-ge v0, p1, :cond_0

    .line 2
    iput p1, p0, Landroid/graphics/Rect;->left:I

    :cond_0
    if-ge v2, p2, :cond_1

    .line 3
    iput p2, p0, Landroid/graphics/Rect;->top:I

    :cond_1
    if-le v1, p3, :cond_2

    .line 4
    iput p3, p0, Landroid/graphics/Rect;->right:I

    :cond_2
    if-le v3, p4, :cond_3

    .line 5
    iput p4, p0, Landroid/graphics/Rect;->bottom:I

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public intersect(Landroid/graphics/Rect;)Z
    .locals 3

    .line 6
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result p1

    return p1
.end method

.method public intersects(IIII)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ge v0, p3, :cond_0

    iget p3, p0, Landroid/graphics/Rect;->right:I

    if-ge p1, p3, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->top:I

    if-ge p1, p4, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isEmpty()Z
    .locals 2

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_0

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

.method public offset(II)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 5
    .line 6
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 7
    .line 8
    add-int/2addr v0, p2

    .line 9
    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 10
    .line 11
    iget v0, p0, Landroid/graphics/Rect;->right:I

    .line 12
    .line 13
    add-int/2addr v0, p1

    .line 14
    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 15
    .line 16
    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    .line 17
    .line 18
    add-int/2addr p1, p2

    .line 19
    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    .line 20
    .line 21
    return-void
.end method

.method public offsetTo(II)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/graphics/Rect;->right:I

    .line 2
    .line 3
    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 4
    .line 5
    sub-int v1, p1, v1

    .line 6
    .line 7
    add-int/2addr v1, v0

    .line 8
    iput v1, p0, Landroid/graphics/Rect;->right:I

    .line 9
    .line 10
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 11
    .line 12
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 13
    .line 14
    sub-int v1, p2, v1

    .line 15
    .line 16
    add-int/2addr v1, v0

    .line 17
    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 18
    .line 19
    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 20
    .line 21
    iput p2, p0, Landroid/graphics/Rect;->top:I

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
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

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
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

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
    iget v1, p0, Landroid/graphics/Rect;->right:I

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 32
    .line 33
    .line 34
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    .line 24
    .line 25
    return-void
.end method

.method public scale(F)V
    .locals 2

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
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 8
    .line 9
    int-to-float v0, v0

    .line 10
    mul-float/2addr v0, p1

    .line 11
    const/high16 v1, 0x3f000000    # 0.5f

    .line 12
    .line 13
    add-float/2addr v0, v1

    .line 14
    float-to-int v0, v0

    .line 15
    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 16
    .line 17
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 18
    .line 19
    int-to-float v0, v0

    .line 20
    mul-float/2addr v0, p1

    .line 21
    add-float/2addr v0, v1

    .line 22
    float-to-int v0, v0

    .line 23
    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 24
    .line 25
    iget v0, p0, Landroid/graphics/Rect;->right:I

    .line 26
    .line 27
    int-to-float v0, v0

    .line 28
    mul-float/2addr v0, p1

    .line 29
    add-float/2addr v0, v1

    .line 30
    float-to-int v0, v0

    .line 31
    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 32
    .line 33
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 34
    .line 35
    int-to-float v0, v0

    .line 36
    mul-float/2addr v0, p1

    .line 37
    add-float/2addr v0, v1

    .line 38
    float-to-int p1, v0

    .line 39
    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public set(IIII)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 2
    iput p2, p0, Landroid/graphics/Rect;->top:I

    .line 3
    iput p3, p0, Landroid/graphics/Rect;->right:I

    .line 4
    iput p4, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public set(Landroid/graphics/Rect;)V
    .locals 1

    .line 5
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 6
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 7
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 8
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public setEmpty()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Landroid/graphics/Rect;->left:I

    return-void
.end method

.method public setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 4

    .line 1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 2
    .line 3
    iget v1, p2, Landroid/graphics/Rect;->right:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 8
    .line 9
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 10
    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 14
    .line 15
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    .line 16
    .line 17
    if-ge v2, v3, :cond_0

    .line 18
    .line 19
    iget v2, p2, Landroid/graphics/Rect;->top:I

    .line 20
    .line 21
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 22
    .line 23
    if-ge v2, v3, :cond_0

    .line 24
    .line 25
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 30
    .line 31
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 32
    .line 33
    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 34
    .line 35
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 40
    .line 41
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 42
    .line 43
    iget v1, p2, Landroid/graphics/Rect;->right:I

    .line 44
    .line 45
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 50
    .line 51
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 52
    .line 53
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 54
    .line 55
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    .line 60
    .line 61
    const/4 p1, 0x1

    .line 62
    return p1

    .line 63
    :cond_0
    const/4 p1, 0x0

    .line 64
    return p1
.end method

.method public sort()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 2
    .line 3
    iget v1, p0, Landroid/graphics/Rect;->right:I

    .line 4
    .line 5
    if-le v0, v1, :cond_0

    .line 6
    .line 7
    iput v1, p0, Landroid/graphics/Rect;->left:I

    .line 8
    .line 9
    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 10
    .line 11
    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 12
    .line 13
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 14
    .line 15
    if-le v0, v1, :cond_1

    .line 16
    .line 17
    iput v1, p0, Landroid/graphics/Rect;->top:I

    .line 18
    .line 19
    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

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

    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    const/16 v1, 0x5d

    .line 6
    invoke-static {p1, v0, v1}, Landroid/app/m;->j(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    const-string v1, "Rect("

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/accessibilityservice/c;->q(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v2, p0, Landroid/graphics/Rect;->top:I

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, " - "

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v2, p0, Landroid/graphics/Rect;->right:I

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 38
    .line 39
    const-string v2, ")"

    .line 40
    .line 41
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method

.method public union(II)V
    .locals 1

    .line 11
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ge p1, v0, :cond_0

    .line 12
    iput p1, p0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 13
    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-le p1, v0, :cond_1

    .line 14
    iput p1, p0, Landroid/graphics/Rect;->right:I

    .line 15
    :cond_1
    :goto_0
    iget p1, p0, Landroid/graphics/Rect;->top:I

    if-ge p2, p1, :cond_2

    .line 16
    iput p2, p0, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 17
    :cond_2
    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    if-le p2, p1, :cond_3

    .line 18
    iput p2, p0, Landroid/graphics/Rect;->bottom:I

    :cond_3
    :goto_1
    return-void
.end method

.method public union(IIII)V
    .locals 4

    if-ge p1, p3, :cond_4

    if-ge p2, p4, :cond_4

    .line 1
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_3

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_3

    if-le v0, p1, :cond_0

    .line 2
    iput p1, p0, Landroid/graphics/Rect;->left:I

    :cond_0
    if-le v2, p2, :cond_1

    .line 3
    iput p2, p0, Landroid/graphics/Rect;->top:I

    :cond_1
    if-ge v1, p3, :cond_2

    .line 4
    iput p3, p0, Landroid/graphics/Rect;->right:I

    :cond_2
    if-ge v3, p4, :cond_4

    .line 5
    iput p4, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 6
    :cond_3
    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 7
    iput p2, p0, Landroid/graphics/Rect;->top:I

    .line 8
    iput p3, p0, Landroid/graphics/Rect;->right:I

    .line 9
    iput p4, p0, Landroid/graphics/Rect;->bottom:I

    :cond_4
    :goto_0
    return-void
.end method

.method public union(Landroid/graphics/Rect;)V
    .locals 3

    .line 10
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/graphics/Rect;->union(IIII)V

    return-void
.end method

.method public final width()I
    .locals 2

    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/graphics/Rect;->left:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/graphics/Rect;->top:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/graphics/Rect;->right:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Landroid/graphics/Rect;->bottom:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
