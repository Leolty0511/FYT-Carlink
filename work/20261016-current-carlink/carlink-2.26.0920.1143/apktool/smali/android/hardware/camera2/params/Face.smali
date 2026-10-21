.class public final Landroid/hardware/camera2/params/Face;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ID_UNSUPPORTED:I = -0x1

.field public static final SCORE_MAX:I = 0x64

.field public static final SCORE_MIN:I = 0x1


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private final mId:I

.field private final mLeftEye:Landroid/graphics/Point;

.field private final mMouth:Landroid/graphics/Point;

.field private final mRightEye:Landroid/graphics/Point;

.field private final mScore:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;I)V
    .locals 7

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 14
    invoke-direct/range {v0 .. v6}, Landroid/hardware/camera2/params/Face;-><init>(Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "bounds"

    .line 2
    invoke-static {v0, p1}, Landroid/hardware/camera2/params/Face;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-lt p2, v0, :cond_3

    const/16 v0, 0x64

    if-gt p2, v0, :cond_3

    const/4 v0, -0x1

    if-gez p3, :cond_1

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Id out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-ne p3, v0, :cond_2

    const-string/jumbo v0, "leftEyePosition"

    .line 4
    invoke-static {v0, p4}, Landroid/hardware/camera2/params/Face;->checkNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "rightEyePosition"

    .line 5
    invoke-static {v0, p5}, Landroid/hardware/camera2/params/Face;->checkNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "mouthPosition"

    .line 6
    invoke-static {v0, p6}, Landroid/hardware/camera2/params/Face;->checkNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    :cond_2
    iput-object p1, p0, Landroid/hardware/camera2/params/Face;->mBounds:Landroid/graphics/Rect;

    .line 8
    iput p2, p0, Landroid/hardware/camera2/params/Face;->mScore:I

    .line 9
    iput p3, p0, Landroid/hardware/camera2/params/Face;->mId:I

    .line 10
    iput-object p4, p0, Landroid/hardware/camera2/params/Face;->mLeftEye:Landroid/graphics/Point;

    .line 11
    iput-object p5, p0, Landroid/hardware/camera2/params/Face;->mRightEye:Landroid/graphics/Point;

    .line 12
    iput-object p6, p0, Landroid/hardware/camera2/params/Face;->mMouth:Landroid/graphics/Point;

    return-void

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Confidence out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 5
    .line 6
    const-string v0, " was required, but it was null"

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1
.end method

.method private static checkNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 5
    .line 6
    const-string v0, " was required to be null, but it wasn\'t"

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1
.end method


# virtual methods
.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/params/Face;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/params/Face;->mId:I

    return v0
.end method

.method public getLeftEyePosition()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/params/Face;->mLeftEye:Landroid/graphics/Point;

    return-object v0
.end method

.method public getMouthPosition()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/params/Face;->mMouth:Landroid/graphics/Point;

    return-object v0
.end method

.method public getRightEyePosition()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/params/Face;->mRightEye:Landroid/graphics/Point;

    return-object v0
.end method

.method public getScore()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/params/Face;->mScore:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Landroid/hardware/camera2/params/Face;->mBounds:Landroid/graphics/Rect;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    iget v1, p0, Landroid/hardware/camera2/params/Face;->mScore:I

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    aput-object v1, v0, v2

    .line 17
    .line 18
    iget v1, p0, Landroid/hardware/camera2/params/Face;->mId:I

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x2

    .line 25
    aput-object v1, v0, v2

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    iget-object v2, p0, Landroid/hardware/camera2/params/Face;->mLeftEye:Landroid/graphics/Point;

    .line 29
    .line 30
    aput-object v2, v0, v1

    .line 31
    .line 32
    const/4 v1, 0x4

    .line 33
    iget-object v2, p0, Landroid/hardware/camera2/params/Face;->mRightEye:Landroid/graphics/Point;

    .line 34
    .line 35
    aput-object v2, v0, v1

    .line 36
    .line 37
    const/4 v1, 0x5

    .line 38
    iget-object v2, p0, Landroid/hardware/camera2/params/Face;->mMouth:Landroid/graphics/Point;

    .line 39
    .line 40
    aput-object v2, v0, v1

    .line 41
    .line 42
    const-string/jumbo v1, "{ bounds: %s, score: %s, id: %d, leftEyePosition: %s, rightEyePosition: %s, mouthPosition: %s }"

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0
.end method
