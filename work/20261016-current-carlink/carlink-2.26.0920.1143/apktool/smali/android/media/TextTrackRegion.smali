.class Landroid/media/TextTrackRegion;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final SCROLL_VALUE_NONE:I = 0x12c

.field static final SCROLL_VALUE_SCROLL_UP:I = 0x12d


# instance fields
.field mAnchorPointX:F

.field mAnchorPointY:F

.field mId:Ljava/lang/String;

.field mLines:I

.field mScrollValue:I

.field mViewportAnchorPointX:F

.field mViewportAnchorPointY:F

.field mWidth:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Landroid/media/TextTrackRegion;->mId:Ljava/lang/String;

    .line 7
    .line 8
    const/high16 v0, 0x42c80000    # 100.0f

    .line 9
    .line 10
    iput v0, p0, Landroid/media/TextTrackRegion;->mWidth:F

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    iput v1, p0, Landroid/media/TextTrackRegion;->mLines:I

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput v1, p0, Landroid/media/TextTrackRegion;->mViewportAnchorPointX:F

    .line 17
    .line 18
    iput v1, p0, Landroid/media/TextTrackRegion;->mAnchorPointX:F

    .line 19
    .line 20
    iput v0, p0, Landroid/media/TextTrackRegion;->mViewportAnchorPointY:F

    .line 21
    .line 22
    iput v0, p0, Landroid/media/TextTrackRegion;->mAnchorPointY:F

    .line 23
    .line 24
    const/16 v0, 0x12c

    .line 25
    .line 26
    iput v0, p0, Landroid/media/TextTrackRegion;->mScrollValue:I

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, " {id:\""

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroid/media/TextTrackRegion;->mId:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "\", width:"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroid/media/TextTrackRegion;->mWidth:F

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", lines:"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Landroid/media/TextTrackRegion;->mLines:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", anchorPoint:("

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Landroid/media/TextTrackRegion;->mAnchorPointX:F

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v2, p0, Landroid/media/TextTrackRegion;->mAnchorPointY:F

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v2, "), viewportAnchorPoints:"

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v2, p0, Landroid/media/TextTrackRegion;->mViewportAnchorPointX:F

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget v1, p0, Landroid/media/TextTrackRegion;->mViewportAnchorPointY:F

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, "), scrollValue:"

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget v1, p0, Landroid/media/TextTrackRegion;->mScrollValue:I

    .line 77
    .line 78
    const/16 v2, 0x12c

    .line 79
    .line 80
    if-ne v1, v2, :cond_0

    .line 81
    .line 82
    const-string/jumbo v1, "none"

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_0
    const/16 v2, 0x12d

    .line 87
    .line 88
    if-ne v1, v2, :cond_1

    .line 89
    .line 90
    const-string/jumbo v1, "scroll_up"

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    const-string v1, "INVALID"

    .line 95
    .line 96
    :goto_0
    const-string/jumbo v2, "}"

    .line 97
    .line 98
    .line 99
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    return-object v0
.end method
