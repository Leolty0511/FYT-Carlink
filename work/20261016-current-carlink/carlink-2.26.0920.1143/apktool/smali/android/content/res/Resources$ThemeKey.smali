.class Landroid/content/res/Resources$ThemeKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThemeKey"
.end annotation


# instance fields
.field mCount:I

.field mForce:[Z

.field private mHashCode:I

.field mResId:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public append(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-array v0, v1, [I

    .line 7
    .line 8
    iput-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    new-array v0, v1, [Z

    .line 15
    .line 16
    iput-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    .line 19
    .line 20
    iget v1, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    .line 21
    .line 22
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    .line 27
    .line 28
    iget-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    .line 29
    .line 30
    iget v1, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    .line 31
    .line 32
    invoke-static {v0, v1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->append([ZIZ)[Z

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    .line 37
    .line 38
    iget v0, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    .line 39
    .line 40
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    iput v0, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    .line 43
    .line 44
    iget v0, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    .line 45
    .line 46
    mul-int/lit8 v0, v0, 0x1f

    .line 47
    .line 48
    add-int/2addr v0, p1

    .line 49
    mul-int/lit8 v0, v0, 0x1f

    .line 50
    .line 51
    add-int/2addr v0, p2

    .line 52
    iput v0, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    .line 53
    .line 54
    return-void
.end method

.method public clone()Landroid/content/res/Resources$ThemeKey;
    .locals 2

    .line 2
    new-instance v0, Landroid/content/res/Resources$ThemeKey;

    invoke-direct {v0}, Landroid/content/res/Resources$ThemeKey;-><init>()V

    .line 3
    iget-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    iput-object v1, v0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    .line 4
    iget-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    iput-object v1, v0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    .line 5
    iget v1, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    iput v1, v0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    .line 6
    iget v1, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    iput v1, v0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/res/Resources$ThemeKey;->clone()Landroid/content/res/Resources$ThemeKey;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

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
    if-eqz p1, :cond_6

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
    if-ne v2, v3, :cond_6

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/res/Resources$ThemeKey;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eq v2, v3, :cond_1

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_1
    check-cast p1, Landroid/content/res/Resources$ThemeKey;

    .line 30
    .line 31
    iget v2, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    .line 32
    .line 33
    iget v3, p1, Landroid/content/res/Resources$ThemeKey;->mCount:I

    .line 34
    .line 35
    if-eq v2, v3, :cond_2

    .line 36
    .line 37
    return v1

    .line 38
    :cond_2
    move v3, v1

    .line 39
    :goto_0
    if-ge v3, v2, :cond_5

    .line 40
    .line 41
    iget-object v4, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    .line 42
    .line 43
    aget v4, v4, v3

    .line 44
    .line 45
    iget-object v5, p1, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    .line 46
    .line 47
    aget v5, v5, v3

    .line 48
    .line 49
    if-ne v4, v5, :cond_4

    .line 50
    .line 51
    iget-object v4, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    .line 52
    .line 53
    aget-boolean v4, v4, v3

    .line 54
    .line 55
    iget-object v5, p1, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    .line 56
    .line 57
    aget-boolean v5, v5, v3

    .line 58
    .line 59
    if-eq v4, v5, :cond_3

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    :goto_1
    return v1

    .line 66
    :cond_5
    return v0

    .line 67
    :cond_6
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroid/content/res/Resources$ThemeKey;->mHashCode:I

    return v0
.end method

.method public setTo(Landroid/content/res/Resources$ThemeKey;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move-object v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, [I

    .line 13
    .line 14
    :goto_0
    iput-object v0, p0, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    .line 15
    .line 16
    iget-object v0, p1, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move-object v1, v0

    .line 26
    check-cast v1, [Z

    .line 27
    .line 28
    :goto_1
    iput-object v1, p0, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    .line 29
    .line 30
    iget p1, p1, Landroid/content/res/Resources$ThemeKey;->mCount:I

    .line 31
    .line 32
    iput p1, p0, Landroid/content/res/Resources$ThemeKey;->mCount:I

    .line 33
    .line 34
    return-void
.end method
