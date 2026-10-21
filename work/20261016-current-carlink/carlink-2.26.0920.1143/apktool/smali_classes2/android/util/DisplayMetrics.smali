.class public Landroid/util/DisplayMetrics;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DENSITY_260:I = 0x104

.field public static final DENSITY_280:I = 0x118

.field public static final DENSITY_300:I = 0x12c

.field public static final DENSITY_340:I = 0x154

.field public static final DENSITY_360:I = 0x168

.field public static final DENSITY_400:I = 0x190

.field public static final DENSITY_420:I = 0x1a4

.field public static final DENSITY_560:I = 0x230

.field public static final DENSITY_DEFAULT:I = 0xa0

.field public static final DENSITY_DEFAULT_SCALE:F = 0.00625f

.field public static DENSITY_DEVICE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DENSITY_DEVICE_STABLE:I

.field public static final DENSITY_HIGH:I = 0xf0

.field public static final DENSITY_LOW:I = 0x78

.field public static final DENSITY_MEDIUM:I = 0xa0

.field public static final DENSITY_TV:I = 0xd5

.field public static final DENSITY_XHIGH:I = 0x140

.field public static final DENSITY_XXHIGH:I = 0x1e0

.field public static final DENSITY_XXXHIGH:I = 0x280


# instance fields
.field public density:F

.field public densityDpi:I

.field public heightPixels:I

.field public noncompatDensity:F

.field public noncompatDensityDpi:I

.field public noncompatHeightPixels:I

.field public noncompatScaledDensity:F

.field public noncompatWidthPixels:I

.field public noncompatXdpi:F

.field public noncompatYdpi:F

.field public scaledDensity:F

.field public widthPixels:I

.field public xdpi:F

.field public ydpi:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/util/DisplayMetrics;->getDeviceDensity()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    .line 6
    .line 7
    invoke-static {}, Landroid/util/DisplayMetrics;->getDeviceDensity()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sput v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDeviceDensity()I
    .locals 2

    .line 1
    const-string v0, "ro.sf.lcd_density"

    .line 2
    .line 3
    const/16 v1, 0xa0

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, "qemu.sf.lcd_density"

    .line 10
    .line 11
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method


# virtual methods
.method public equals(Landroid/util/DisplayMetrics;)Z
    .locals 2

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/DisplayMetrics;->equalsPhysical(Landroid/util/DisplayMetrics;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget v1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    iget p1, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/util/DisplayMetrics;

    invoke-virtual {p0, p1}, Landroid/util/DisplayMetrics;->equals(Landroid/util/DisplayMetrics;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equalsPhysical(Landroid/util/DisplayMetrics;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/util/DisplayMetrics;->density:F

    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    iget v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/util/DisplayMetrics;->noncompatDensity:F

    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    iget p1, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public setTo(Landroid/util/DisplayMetrics;)V
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 5
    .line 6
    iput v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 7
    .line 8
    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 9
    .line 10
    iput v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 11
    .line 12
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    .line 13
    .line 14
    iput v0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 15
    .line 16
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 17
    .line 18
    iput v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 19
    .line 20
    iget v0, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 21
    .line 22
    iput v0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 23
    .line 24
    iget v0, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 25
    .line 26
    iput v0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 27
    .line 28
    iget v0, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 29
    .line 30
    iput v0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    .line 31
    .line 32
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 33
    .line 34
    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 35
    .line 36
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 37
    .line 38
    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 39
    .line 40
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    .line 41
    .line 42
    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatDensity:F

    .line 43
    .line 44
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    .line 45
    .line 46
    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    .line 47
    .line 48
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    .line 49
    .line 50
    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    .line 51
    .line 52
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    .line 53
    .line 54
    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    .line 55
    .line 56
    iget p1, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    .line 57
    .line 58
    iput p1, p0, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    .line 59
    .line 60
    return-void
.end method

.method public setToDefaults()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3
    .line 4
    iput v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 5
    .line 6
    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    .line 7
    .line 8
    int-to-float v2, v1

    .line 9
    const/high16 v3, 0x43200000    # 160.0f

    .line 10
    .line 11
    div-float/2addr v2, v3

    .line 12
    iput v2, p0, Landroid/util/DisplayMetrics;->density:F

    .line 13
    .line 14
    iput v1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 15
    .line 16
    iput v2, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 17
    .line 18
    int-to-float v3, v1

    .line 19
    iput v3, p0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 20
    .line 21
    int-to-float v4, v1

    .line 22
    iput v4, p0, Landroid/util/DisplayMetrics;->ydpi:F

    .line 23
    .line 24
    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 25
    .line 26
    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 27
    .line 28
    iput v2, p0, Landroid/util/DisplayMetrics;->noncompatDensity:F

    .line 29
    .line 30
    iput v1, p0, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    .line 31
    .line 32
    iput v2, p0, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    .line 33
    .line 34
    iput v3, p0, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    .line 35
    .line 36
    iput v4, p0, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    .line 37
    .line 38
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DisplayMetrics{density="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroid/util/DisplayMetrics;->density:F

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", width="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", height="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", scaledDensity="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", xdpi="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", ydpi="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Landroid/util/DisplayMetrics;->ydpi:F

    .line 59
    .line 60
    const-string/jumbo v2, "}"

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v1, v2}, Landroid/app/m;->i(Ljava/lang/StringBuilder;FLjava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    return-object v0
.end method
