.class public Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/colorextraction/ColorExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GradientColors"
.end annotation


# instance fields
.field private mMainColor:I

.field private mSecondaryColor:I

.field private mSupportsDarkText:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-eq v1, v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    check-cast p1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 16
    .line 17
    iget v1, p1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mMainColor:I

    .line 18
    .line 19
    iget v2, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mMainColor:I

    .line 20
    .line 21
    if-ne v1, v2, :cond_1

    .line 22
    .line 23
    iget v1, p1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSecondaryColor:I

    .line 24
    .line 25
    iget v2, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSecondaryColor:I

    .line 26
    .line 27
    if-ne v1, v2, :cond_1

    .line 28
    .line 29
    iget-boolean p1, p1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSupportsDarkText:Z

    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSupportsDarkText:Z

    .line 32
    .line 33
    if-ne p1, v1, :cond_1

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    :cond_1
    :goto_0
    return v0
.end method

.method public getMainColor()I
    .locals 1

    iget v0, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mMainColor:I

    return v0
.end method

.method public getSecondaryColor()I
    .locals 1

    iget v0, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSecondaryColor:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mMainColor:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget v1, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSecondaryColor:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSupportsDarkText:Z

    .line 11
    .line 12
    xor-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    add-int/2addr v0, v1

    .line 15
    return v0
.end method

.method public set(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .locals 1

    .line 1
    iget v0, p1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mMainColor:I

    .line 2
    .line 3
    iput v0, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mMainColor:I

    .line 4
    .line 5
    iget v0, p1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSecondaryColor:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSecondaryColor:I

    .line 8
    .line 9
    iget-boolean p1, p1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSupportsDarkText:Z

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSupportsDarkText:Z

    .line 12
    .line 13
    return-void
.end method

.method public setMainColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mMainColor:I

    return-void
.end method

.method public setSecondaryColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSecondaryColor:I

    return-void
.end method

.method public setSupportsDarkText(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSupportsDarkText:Z

    return-void
.end method

.method public supportsDarkText()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSupportsDarkText:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "GradientColors("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mMainColor:I

    .line 9
    .line 10
    const-string v2, ", "

    .line 11
    .line 12
    invoke-static {v1, v0, v2}, Landroid/accessibilityservice/c;->x(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget v1, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSecondaryColor:I

    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ")"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method
