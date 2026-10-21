.class public final Landroid/hardware/camera2/Face;
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
    invoke-direct/range {v0 .. v6}, Landroid/hardware/camera2/Face;-><init>(Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "bounds"

    .line 2
    invoke-static {v0, p1}, Landroid/hardware/camera2/Face;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

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

    const-string v0, "leftEyePosition"

    .line 4
    invoke-static {v0, p4}, Landroid/hardware/camera2/Face;->checkNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "rightEyePosition"

    .line 5
    invoke-static {v0, p5}, Landroid/hardware/camera2/Face;->checkNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "mouthPosition"

    .line 6
    invoke-static {v0, p6}, Landroid/hardware/camera2/Face;->checkNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    :cond_2
    iput-object p1, p0, Landroid/hardware/camera2/Face;->mBounds:Landroid/graphics/Rect;

    .line 8
    iput p2, p0, Landroid/hardware/camera2/Face;->mScore:I

    .line 9
    iput p3, p0, Landroid/hardware/camera2/Face;->mId:I

    .line 10
    iput-object p4, p0, Landroid/hardware/camera2/Face;->mLeftEye:Landroid/graphics/Point;

    .line 11
    iput-object p5, p0, Landroid/hardware/camera2/Face;->mRightEye:Landroid/graphics/Point;

    .line 12
    iput-object p6, p0, Landroid/hardware/camera2/Face;->mMouth:Landroid/graphics/Point;

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

    if-eqz p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " was required, but it was null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static checkNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " was required to be null, but it wasn\'t"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/Face;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/hardware/camera2/Face;->mId:I

    return v0
.end method

.method public getLeftEyePosition()Landroid/graphics/Point;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/Face;->mLeftEye:Landroid/graphics/Point;

    return-object v0
.end method

.method public getMouthPosition()Landroid/graphics/Point;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/Face;->mMouth:Landroid/graphics/Point;

    return-object v0
.end method

.method public getRightEyePosition()Landroid/graphics/Point;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/Face;->mRightEye:Landroid/graphics/Point;

    return-object v0
.end method

.method public getScore()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/hardware/camera2/Face;->mScore:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Landroid/hardware/camera2/Face;->mBounds:Landroid/graphics/Rect;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/Face;->mScore:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/Face;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/camera2/Face;->mLeftEye:Landroid/graphics/Point;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/camera2/Face;->mRightEye:Landroid/graphics/Point;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/camera2/Face;->mMouth:Landroid/graphics/Point;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "{ bounds: %s, score: %s, id: %d, leftEyePosition: %s, rightEyePosition: %s, mouthPosition: %s }"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
