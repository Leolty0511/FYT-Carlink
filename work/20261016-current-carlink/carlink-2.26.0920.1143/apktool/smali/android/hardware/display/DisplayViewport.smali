.class public final Landroid/hardware/display/DisplayViewport;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public deviceHeight:I

.field public deviceWidth:I

.field public displayId:I

.field public final logicalFrame:Landroid/graphics/Rect;

.field public orientation:I

.field public final physicalFrame:Landroid/graphics/Rect;

.field public uniqueId:Ljava/lang/String;

.field public valid:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/hardware/display/DisplayViewport;)V
    .locals 2

    .line 1
    iget-boolean v0, p1, Landroid/hardware/display/DisplayViewport;->valid:Z

    .line 2
    .line 3
    iput-boolean v0, p0, Landroid/hardware/display/DisplayViewport;->valid:Z

    .line 4
    .line 5
    iget v0, p1, Landroid/hardware/display/DisplayViewport;->displayId:I

    .line 6
    .line 7
    iput v0, p0, Landroid/hardware/display/DisplayViewport;->displayId:I

    .line 8
    .line 9
    iget v0, p1, Landroid/hardware/display/DisplayViewport;->orientation:I

    .line 10
    .line 11
    iput v0, p0, Landroid/hardware/display/DisplayViewport;->orientation:I

    .line 12
    .line 13
    iget-object v0, p0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    .line 14
    .line 15
    iget-object v1, p1, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    .line 21
    .line 22
    iget-object v1, p1, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 25
    .line 26
    .line 27
    iget v0, p1, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    .line 28
    .line 29
    iput v0, p0, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    .line 30
    .line 31
    iget v0, p1, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    .line 32
    .line 33
    iput v0, p0, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    .line 34
    .line 35
    iget-object p1, p1, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    .line 36
    .line 37
    iput-object p1, p0, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    .line 38
    .line 39
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroid/hardware/display/DisplayViewport;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Landroid/hardware/display/DisplayViewport;

    .line 12
    .line 13
    iget-boolean v1, p0, Landroid/hardware/display/DisplayViewport;->valid:Z

    .line 14
    .line 15
    iget-boolean v3, p1, Landroid/hardware/display/DisplayViewport;->valid:Z

    .line 16
    .line 17
    if-ne v1, v3, :cond_2

    .line 18
    .line 19
    iget v1, p0, Landroid/hardware/display/DisplayViewport;->displayId:I

    .line 20
    .line 21
    iget v3, p1, Landroid/hardware/display/DisplayViewport;->displayId:I

    .line 22
    .line 23
    if-ne v1, v3, :cond_2

    .line 24
    .line 25
    iget v1, p0, Landroid/hardware/display/DisplayViewport;->orientation:I

    .line 26
    .line 27
    iget v3, p1, Landroid/hardware/display/DisplayViewport;->orientation:I

    .line 28
    .line 29
    if-ne v1, v3, :cond_2

    .line 30
    .line 31
    iget-object v1, p0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    .line 32
    .line 33
    iget-object v3, p1, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    .line 34
    .line 35
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    iget-object v1, p0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    .line 42
    .line 43
    iget-object v3, p1, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    .line 44
    .line 45
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    iget v1, p0, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    .line 52
    .line 53
    iget v3, p1, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    .line 54
    .line 55
    if-ne v1, v3, :cond_2

    .line 56
    .line 57
    iget v1, p0, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    .line 58
    .line 59
    iget v3, p1, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    .line 60
    .line 61
    if-ne v1, v3, :cond_2

    .line 62
    .line 63
    iget-object v1, p0, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    .line 64
    .line 65
    iget-object p1, p1, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    move v0, v2

    .line 75
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/hardware/display/DisplayViewport;->valid:Z

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    add-int/2addr v1, v0

    .line 6
    add-int/lit8 v1, v1, 0x1

    .line 7
    .line 8
    mul-int/lit8 v0, v1, 0x1f

    .line 9
    .line 10
    iget v2, p0, Landroid/hardware/display/DisplayViewport;->displayId:I

    .line 11
    .line 12
    add-int/2addr v0, v2

    .line 13
    add-int/2addr v0, v1

    .line 14
    mul-int/lit8 v1, v0, 0x1f

    .line 15
    .line 16
    iget v2, p0, Landroid/hardware/display/DisplayViewport;->orientation:I

    .line 17
    .line 18
    add-int/2addr v1, v2

    .line 19
    add-int/2addr v1, v0

    .line 20
    mul-int/lit8 v0, v1, 0x1f

    .line 21
    .line 22
    iget-object v2, p0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/graphics/Rect;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    add-int/2addr v2, v0

    .line 29
    add-int/2addr v2, v1

    .line 30
    mul-int/lit8 v0, v2, 0x1f

    .line 31
    .line 32
    iget-object v1, p0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/graphics/Rect;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    add-int/2addr v1, v0

    .line 39
    add-int/2addr v1, v2

    .line 40
    mul-int/lit8 v0, v1, 0x1f

    .line 41
    .line 42
    iget v2, p0, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    .line 43
    .line 44
    add-int/2addr v0, v2

    .line 45
    add-int/2addr v0, v1

    .line 46
    mul-int/lit8 v1, v0, 0x1f

    .line 47
    .line 48
    iget v2, p0, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    .line 49
    .line 50
    add-int/2addr v1, v2

    .line 51
    add-int/2addr v1, v0

    .line 52
    mul-int/lit8 v0, v1, 0x1f

    .line 53
    .line 54
    iget-object v2, p0, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    add-int/2addr v2, v0

    .line 61
    add-int/2addr v2, v1

    .line 62
    return v2
.end method

.method public makeCopy()Landroid/hardware/display/DisplayViewport;
    .locals 1

    .line 1
    new-instance v0, Landroid/hardware/display/DisplayViewport;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/hardware/display/DisplayViewport;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayViewport;->copyFrom(Landroid/hardware/display/DisplayViewport;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DisplayViewport{valid="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Landroid/hardware/display/DisplayViewport;->valid:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", displayId="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroid/hardware/display/DisplayViewport;->displayId:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", uniqueId=\'"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "\', orientation="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Landroid/hardware/display/DisplayViewport;->orientation:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", logicalFrame="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", physicalFrame="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", deviceWidth="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget v1, p0, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", deviceHeight="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget v1, p0, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    .line 79
    .line 80
    const-string/jumbo v2, "}"

    .line 81
    .line 82
    .line 83
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    return-object v0
.end method
