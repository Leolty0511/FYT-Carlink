.class public Landroid/hardware/camera2/legacy/LegacyRequestMapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_JPEG_QUALITY:B = 0x55t

.field private static final TAG:Ljava/lang/String; = "LegacyRequestMapper"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkForCompleteGpsData(Landroid/location/Location;)Z
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static convertAeAntiBandingModeToLegacy(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "auto"

    return-object p0

    :cond_1
    const-string p0, "60hz"

    return-object p0

    :cond_2
    const-string p0, "50hz"

    return-object p0

    :cond_3
    const-string/jumbo p0, "off"

    return-object p0
.end method

.method private static convertAeFpsRangeToLegacy(Landroid/util/Range;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Ljava/lang/Integer;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    mul-int/lit16 v1, v1, 0x3e8

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    aput v1, v0, v2

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    mul-int/lit16 p0, p0, 0x3e8

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    aput p0, v0, v1

    .line 33
    .line 34
    return-object v0
.end method

.method private static convertAwbModeToLegacy(I)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "auto"

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v1, "convertAwbModeToLegacy - unrecognized control.awbMode"

    .line 7
    .line 8
    const-string v2, "LegacyRequestMapper"

    .line 9
    .line 10
    invoke-static {v1, p0, v2}, Landroid/app/m;->A(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :pswitch_0
    const-string/jumbo p0, "shade"

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_1
    const-string/jumbo p0, "twilight"

    .line 19
    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_2
    const-string p0, "cloudy-daylight"

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_3
    const-string p0, "daylight"

    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_4
    const-string/jumbo p0, "warm-fluorescent"

    .line 29
    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_5
    const-string p0, "fluorescent"

    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_6
    const-string/jumbo p0, "incandescent"

    .line 36
    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_7
    return-object v0

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static convertMeteringRegionsToLegacy(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;[Landroid/hardware/camera2/params/MeteringRectangle;ILjava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;",
            "[",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p2, :cond_6

    .line 4
    .line 5
    if-gtz p3, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    array-length v3, p2

    .line 14
    move v4, v0

    .line 15
    :goto_0
    if-ge v4, v3, :cond_2

    .line 16
    .line 17
    aget-object v5, p2, v4

    .line 18
    .line 19
    invoke-virtual {v5}, Landroid/hardware/camera2/params/MeteringRectangle;->getMeteringWeight()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    if-eqz v6, :cond_1

    .line 24
    .line 25
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    const-string v3, "LegacyRequestMapper"

    .line 36
    .line 37
    if-nez p2, :cond_3

    .line 38
    .line 39
    const-string p0, "Only received metering rectangles with weight 0."

    .line 40
    .line 41
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    new-array p0, v1, [Landroid/hardware/Camera$Area;

    .line 45
    .line 46
    sget-object p1, Landroid/hardware/camera2/legacy/ParameterUtils;->CAMERA_AREA_DEFAULT:Landroid/hardware/Camera$Area;

    .line 47
    .line 48
    aput-object p1, p0, v0

    .line 49
    .line 50
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    .line 67
    .line 68
    :goto_1
    if-ge v0, p2, :cond_4

    .line 69
    .line 70
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    check-cast v4, Landroid/hardware/camera2/params/MeteringRectangle;

    .line 75
    .line 76
    invoke-static {p0, v4, p1}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertMeteringRectangleToLegacy(Landroid/graphics/Rect;Landroid/hardware/camera2/params/MeteringRectangle;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;)Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    iget-object v4, v4, Landroid/hardware/camera2/legacy/ParameterUtils$MeteringData;->meteringArea:Landroid/hardware/Camera$Area;

    .line 81
    .line 82
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    add-int/lit8 v0, v0, 0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    if-ge p3, p0, :cond_5

    .line 93
    .line 94
    new-instance p0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string p1, "convertMeteringRegionsToLegacy - Too many requested "

    .line 97
    .line 98
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string p1, " regions, ignoring all beyond the first "

    .line 105
    .line 106
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    :cond_5
    return-object v1

    .line 120
    :cond_6
    :goto_2
    if-lez p3, :cond_7

    .line 121
    .line 122
    new-array p0, v1, [Landroid/hardware/Camera$Area;

    .line 123
    .line 124
    sget-object p1, Landroid/hardware/camera2/legacy/ParameterUtils;->CAMERA_AREA_DEFAULT:Landroid/hardware/Camera$Area;

    .line 125
    .line 126
    aput-object p1, p0, v0

    .line 127
    .line 128
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    return-object p0

    .line 133
    :cond_7
    const/4 p0, 0x0

    .line 134
    return-object p0
.end method

.method public static convertRequestMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;)V
    .locals 15

    .line 1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyRequest;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyRequest;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 4
    .line 5
    iget-object v2, p0, Landroid/hardware/camera2/legacy/LegacyRequest;->previewSize:Landroid/util/Size;

    .line 6
    .line 7
    iget-object p0, p0, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    .line 8
    .line 9
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Landroid/graphics/Rect;

    .line 16
    .line 17
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 18
    .line 19
    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    check-cast v4, Landroid/graphics/Rect;

    .line 24
    .line 25
    invoke-static {v3, v4, v2, p0}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertScalerCropRegion(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/Size;Landroid/hardware/Camera$Parameters;)Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    iget v4, v2, Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;->zoomIndex:I

    .line 36
    .line 37
    invoke-virtual {p0, v4}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 38
    .line 39
    .line 40
    :cond_0
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 41
    .line 42
    const/4 v5, 0x1

    .line 43
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-static {v1, v4, v6}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Ljava/lang/Integer;

    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    const/4 v6, 0x2

    .line 58
    const-string v7, "LegacyRequestMapper"

    .line 59
    .line 60
    if-eq v4, v5, :cond_1

    .line 61
    .line 62
    if-eq v4, v6, :cond_1

    .line 63
    .line 64
    const-string v6, "convertRequestToMetadata - Ignoring unsupported colorCorrection.aberrationMode = "

    .line 65
    .line 66
    invoke-static {v6, v4, v7}, Landroid/app/m;->A(Ljava/lang/String;ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 70
    .line 71
    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    check-cast v4, Ljava/lang/Integer;

    .line 76
    .line 77
    const-string v6, "auto"

    .line 78
    .line 79
    if-eqz v4, :cond_2

    .line 80
    .line 81
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    invoke-static {v4}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->convertAeAntiBandingModeToLegacy(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    const-string v8, "50hz"

    .line 95
    .line 96
    const-string v9, "60hz"

    .line 97
    .line 98
    const-string/jumbo v10, "off"

    .line 99
    .line 100
    .line 101
    filled-new-array {v6, v10, v8, v9}, [Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    invoke-static {v4, v8}, Landroid/hardware/camera2/utils/ListUtils;->listSelectFirstFrom(Ljava/util/List;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    check-cast v4, Ljava/lang/String;

    .line 110
    .line 111
    :goto_0
    if-eqz v4, :cond_3

    .line 112
    .line 113
    invoke-virtual {p0, v4}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_3
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 117
    .line 118
    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    check-cast v4, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 123
    .line 124
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 125
    .line 126
    invoke-virtual {v1, v8}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    if-eqz v8, :cond_4

    .line 131
    .line 132
    const-string v8, "convertRequestMetadata - control.awbRegions setting is not supported, ignoring value"

    .line 133
    .line 134
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    :cond_4
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    const-string v9, "AE"

    .line 142
    .line 143
    invoke-static {v3, v2, v4, v8, v9}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->convertMeteringRegionsToLegacy(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;[Landroid/hardware/camera2/params/MeteringRectangle;ILjava/lang/String;)Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    if-lez v8, :cond_5

    .line 148
    .line 149
    invoke-virtual {p0, v4}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 150
    .line 151
    .line 152
    :cond_5
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 153
    .line 154
    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    check-cast v4, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 159
    .line 160
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    const-string v9, "AF"

    .line 165
    .line 166
    invoke-static {v3, v2, v4, v8, v9}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->convertMeteringRegionsToLegacy(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;[Landroid/hardware/camera2/params/MeteringRectangle;ILjava/lang/String;)Ljava/util/List;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    if-lez v8, :cond_6

    .line 171
    .line 172
    invoke-virtual {p0, v2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 173
    .line 174
    .line 175
    :cond_6
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 176
    .line 177
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    check-cast v2, Landroid/util/Range;

    .line 182
    .line 183
    const/4 v3, 0x0

    .line 184
    if-eqz v2, :cond_a

    .line 185
    .line 186
    invoke-static {v2}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->convertAeFpsRangeToLegacy(Landroid/util/Range;)[I

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 199
    .line 200
    .line 201
    move-result v8

    .line 202
    if-eqz v8, :cond_8

    .line 203
    .line 204
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v8

    .line 208
    check-cast v8, [I

    .line 209
    .line 210
    aget v9, v8, v3

    .line 211
    .line 212
    int-to-double v9, v9

    .line 213
    const-wide v11, 0x408f400000000000L    # 1000.0

    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    div-double/2addr v9, v11

    .line 219
    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    .line 220
    .line 221
    .line 222
    move-result-wide v9

    .line 223
    double-to-int v9, v9

    .line 224
    mul-int/lit16 v9, v9, 0x3e8

    .line 225
    .line 226
    aget v10, v8, v5

    .line 227
    .line 228
    int-to-double v13, v10

    .line 229
    div-double/2addr v13, v11

    .line 230
    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    .line 231
    .line 232
    .line 233
    move-result-wide v10

    .line 234
    double-to-int v10, v10

    .line 235
    mul-int/lit16 v10, v10, 0x3e8

    .line 236
    .line 237
    aget v11, v2, v3

    .line 238
    .line 239
    if-ne v11, v9, :cond_7

    .line 240
    .line 241
    aget v9, v2, v5

    .line 242
    .line 243
    if-ne v9, v10, :cond_7

    .line 244
    .line 245
    goto :goto_1

    .line 246
    :cond_8
    const/4 v8, 0x0

    .line 247
    :goto_1
    if-eqz v8, :cond_9

    .line 248
    .line 249
    aget v2, v8, v3

    .line 250
    .line 251
    aget v4, v8, v5

    .line 252
    .line 253
    invoke-virtual {p0, v2, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 254
    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    const-string v8, "Unsupported FPS range set ["

    .line 260
    .line 261
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    aget v8, v2, v3

    .line 265
    .line 266
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    const-string v8, ","

    .line 270
    .line 271
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    aget v2, v2, v5

    .line 275
    .line 276
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    const-string v2, "]"

    .line 280
    .line 281
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .line 290
    .line 291
    :cond_a
    :goto_2
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 292
    .line 293
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    check-cast v0, Landroid/util/Range;

    .line 298
    .line 299
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 300
    .line 301
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    invoke-static {v1, v2, v4}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    check-cast v2, Ljava/lang/Integer;

    .line 310
    .line 311
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 316
    .line 317
    .line 318
    move-result-object v4

    .line 319
    invoke-virtual {v0, v4}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    .line 320
    .line 321
    .line 322
    move-result v0

    .line 323
    if-nez v0, :cond_b

    .line 324
    .line 325
    const-string v0, "convertRequestMetadata - control.aeExposureCompensation is out of range, ignoring value"

    .line 326
    .line 327
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    .line 329
    .line 330
    move v2, v3

    .line 331
    :cond_b
    invoke-virtual {p0, v2}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 332
    .line 333
    .line 334
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 335
    .line 336
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 337
    .line 338
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    .line 339
    .line 340
    .line 341
    move-result v4

    .line 342
    invoke-static {v1, v0, v2, v4, v2}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->getIfSupported(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    check-cast v0, Ljava/lang/Boolean;

    .line 347
    .line 348
    if-eqz v0, :cond_c

    .line 349
    .line 350
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 351
    .line 352
    .line 353
    move-result v0

    .line 354
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 355
    .line 356
    .line 357
    :cond_c
    invoke-static {v1, p0}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->mapAeAndFlashMode(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V

    .line 358
    .line 359
    .line 360
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 361
    .line 362
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 363
    .line 364
    .line 365
    move-result-object v4

    .line 366
    invoke-static {v1, v0, v4}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    check-cast v0, Ljava/lang/Integer;

    .line 371
    .line 372
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 373
    .line 374
    .line 375
    move-result v0

    .line 376
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    .line 377
    .line 378
    .line 379
    move-result-object v4

    .line 380
    invoke-static {v0, v4}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertAfModeToLegacy(ILjava/util/List;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    if-eqz v0, :cond_d

    .line 385
    .line 386
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    :cond_d
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 390
    .line 391
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 392
    .line 393
    .line 394
    move-result-object v4

    .line 395
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    .line 396
    .line 397
    .line 398
    move-result-object v8

    .line 399
    if-eqz v8, :cond_e

    .line 400
    .line 401
    move v8, v5

    .line 402
    goto :goto_3

    .line 403
    :cond_e
    move v8, v3

    .line 404
    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 405
    .line 406
    .line 407
    move-result-object v9

    .line 408
    invoke-static {v1, v0, v4, v8, v9}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->getIfSupported(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    check-cast v0, Ljava/lang/Integer;

    .line 413
    .line 414
    if-eqz v0, :cond_f

    .line 415
    .line 416
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 417
    .line 418
    .line 419
    move-result v0

    .line 420
    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->convertAwbModeToLegacy(I)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    :cond_f
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 428
    .line 429
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    .line 430
    .line 431
    .line 432
    move-result v4

    .line 433
    invoke-static {v1, v0, v2, v4, v2}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->getIfSupported(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    check-cast v0, Ljava/lang/Boolean;

    .line 438
    .line 439
    if-eqz v0, :cond_10

    .line 440
    .line 441
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 442
    .line 443
    .line 444
    move-result v0

    .line 445
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 446
    .line 447
    .line 448
    :cond_10
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 449
    .line 450
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 451
    .line 452
    .line 453
    move-result-object v2

    .line 454
    invoke-static {v1, v0, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    check-cast v0, Ljava/lang/Integer;

    .line 459
    .line 460
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 461
    .line 462
    .line 463
    move-result v0

    .line 464
    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->filterSupportedCaptureIntent(I)I

    .line 465
    .line 466
    .line 467
    move-result v0

    .line 468
    const/4 v2, 0x3

    .line 469
    if-eq v0, v2, :cond_12

    .line 470
    .line 471
    const/4 v2, 0x4

    .line 472
    if-ne v0, v2, :cond_11

    .line 473
    .line 474
    goto :goto_4

    .line 475
    :cond_11
    move v0, v3

    .line 476
    goto :goto_5

    .line 477
    :cond_12
    :goto_4
    move v0, v5

    .line 478
    :goto_5
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 479
    .line 480
    .line 481
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 482
    .line 483
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 484
    .line 485
    .line 486
    move-result-object v2

    .line 487
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    .line 488
    .line 489
    .line 490
    move-result v4

    .line 491
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 492
    .line 493
    .line 494
    move-result-object v8

    .line 495
    invoke-static {v1, v0, v2, v4, v8}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->getIfSupported(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    check-cast v0, Ljava/lang/Integer;

    .line 500
    .line 501
    if-eqz v0, :cond_14

    .line 502
    .line 503
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 504
    .line 505
    .line 506
    move-result v0

    .line 507
    if-ne v0, v5, :cond_13

    .line 508
    .line 509
    move v0, v5

    .line 510
    goto :goto_6

    .line 511
    :cond_13
    move v0, v3

    .line 512
    :goto_6
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 513
    .line 514
    .line 515
    :cond_14
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    const-string/jumbo v2, "infinity"

    .line 520
    .line 521
    .line 522
    invoke-static {v0, v2}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    .line 523
    .line 524
    .line 525
    move-result v0

    .line 526
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 527
    .line 528
    const/4 v4, 0x0

    .line 529
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 530
    .line 531
    .line 532
    move-result-object v8

    .line 533
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 534
    .line 535
    .line 536
    move-result-object v9

    .line 537
    invoke-static {v1, v2, v8, v0, v9}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->getIfSupported(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    move-result-object v2

    .line 541
    check-cast v2, Ljava/lang/Float;

    .line 542
    .line 543
    if-eqz v2, :cond_15

    .line 544
    .line 545
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 546
    .line 547
    .line 548
    move-result v2

    .line 549
    cmpl-float v2, v2, v4

    .line 550
    .line 551
    if-eqz v2, :cond_16

    .line 552
    .line 553
    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 554
    .line 555
    const-string v4, "convertRequestToMetadata - Ignoring android.lens.focusDistance "

    .line 556
    .line 557
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    const-string v0, ", only 0.0f is supported"

    .line 564
    .line 565
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    .line 574
    .line 575
    :cond_16
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    if-eqz v0, :cond_1a

    .line 580
    .line 581
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 582
    .line 583
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 584
    .line 585
    .line 586
    move-result-object v2

    .line 587
    invoke-static {v1, v0, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    check-cast v0, Ljava/lang/Integer;

    .line 592
    .line 593
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 594
    .line 595
    .line 596
    move-result v0

    .line 597
    if-eq v0, v5, :cond_19

    .line 598
    .line 599
    const/4 v2, 0x2

    .line 600
    if-eq v0, v2, :cond_17

    .line 601
    .line 602
    new-instance v2, Ljava/lang/StringBuilder;

    .line 603
    .line 604
    const-string v4, "Control mode "

    .line 605
    .line 606
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    const-string v0, " is unsupported, defaulting to AUTO"

    .line 613
    .line 614
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v0

    .line 621
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    .line 623
    .line 624
    goto :goto_7

    .line 625
    :cond_17
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 626
    .line 627
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 628
    .line 629
    .line 630
    move-result-object v2

    .line 631
    invoke-static {v1, v0, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    check-cast v0, Ljava/lang/Integer;

    .line 636
    .line 637
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 638
    .line 639
    .line 640
    move-result v0

    .line 641
    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertSceneModeToLegacy(I)Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v2

    .line 645
    if-eqz v2, :cond_18

    .line 646
    .line 647
    move-object v6, v2

    .line 648
    goto :goto_7

    .line 649
    :cond_18
    const-string v2, "Skipping unknown requested scene mode: "

    .line 650
    .line 651
    invoke-static {v2, v0, v7}, Landroid/app/m;->A(Ljava/lang/String;ILjava/lang/String;)V

    .line 652
    .line 653
    .line 654
    :cond_19
    :goto_7
    invoke-virtual {p0, v6}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    :cond_1a
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    if-eqz v0, :cond_1c

    .line 662
    .line 663
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 664
    .line 665
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 666
    .line 667
    .line 668
    move-result-object v2

    .line 669
    invoke-static {v1, v0, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    move-result-object v0

    .line 673
    check-cast v0, Ljava/lang/Integer;

    .line 674
    .line 675
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 676
    .line 677
    .line 678
    move-result v0

    .line 679
    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertEffectModeToLegacy(I)Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v2

    .line 683
    if-eqz v2, :cond_1b

    .line 684
    .line 685
    invoke-virtual {p0, v2}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 686
    .line 687
    .line 688
    goto :goto_8

    .line 689
    :cond_1b
    const-string/jumbo v2, "none"

    .line 690
    .line 691
    .line 692
    invoke-virtual {p0, v2}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 693
    .line 694
    .line 695
    new-instance v2, Ljava/lang/StringBuilder;

    .line 696
    .line 697
    const-string v4, "Skipping unknown requested effect mode: "

    .line 698
    .line 699
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 700
    .line 701
    .line 702
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 703
    .line 704
    .line 705
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object v0

    .line 709
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    .line 711
    .line 712
    :cond_1c
    :goto_8
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_TEST_PATTERN_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 713
    .line 714
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 715
    .line 716
    .line 717
    move-result-object v2

    .line 718
    invoke-static {v1, v0, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    .line 720
    .line 721
    move-result-object v0

    .line 722
    check-cast v0, Ljava/lang/Integer;

    .line 723
    .line 724
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 725
    .line 726
    .line 727
    move-result v0

    .line 728
    if-eqz v0, :cond_1d

    .line 729
    .line 730
    new-instance v2, Ljava/lang/StringBuilder;

    .line 731
    .line 732
    const-string v4, "convertRequestToMetadata - ignoring sensor.testPatternMode "

    .line 733
    .line 734
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 738
    .line 739
    .line 740
    const-string v0, "; only OFF is supported"

    .line 741
    .line 742
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    .line 744
    .line 745
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    .line 751
    .line 752
    :cond_1d
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 753
    .line 754
    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    .line 755
    .line 756
    .line 757
    move-result-object v0

    .line 758
    check-cast v0, Landroid/location/Location;

    .line 759
    .line 760
    if-eqz v0, :cond_1f

    .line 761
    .line 762
    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->checkForCompleteGpsData(Landroid/location/Location;)Z

    .line 763
    .line 764
    .line 765
    move-result v2

    .line 766
    if-eqz v2, :cond_1e

    .line 767
    .line 768
    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    .line 769
    .line 770
    .line 771
    move-result-wide v8

    .line 772
    invoke-virtual {p0, v8, v9}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 773
    .line 774
    .line 775
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    .line 776
    .line 777
    .line 778
    move-result-wide v8

    .line 779
    invoke-virtual {p0, v8, v9}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 780
    .line 781
    .line 782
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    .line 783
    .line 784
    .line 785
    move-result-wide v8

    .line 786
    invoke-virtual {p0, v8, v9}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 787
    .line 788
    .line 789
    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    .line 790
    .line 791
    .line 792
    move-result-object v2

    .line 793
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 794
    .line 795
    .line 796
    move-result-object v2

    .line 797
    invoke-virtual {p0, v2}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    .line 798
    .line 799
    .line 800
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    .line 801
    .line 802
    .line 803
    move-result-wide v8

    .line 804
    invoke-virtual {p0, v8, v9}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 805
    .line 806
    .line 807
    goto :goto_9

    .line 808
    :cond_1e
    new-instance v2, Ljava/lang/StringBuilder;

    .line 809
    .line 810
    const-string v4, "Incomplete GPS parameters provided in location "

    .line 811
    .line 812
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 813
    .line 814
    .line 815
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 816
    .line 817
    .line 818
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 819
    .line 820
    .line 821
    move-result-object v0

    .line 822
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    .line 824
    .line 825
    goto :goto_9

    .line 826
    :cond_1f
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    .line 827
    .line 828
    .line 829
    :goto_9
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 830
    .line 831
    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    .line 832
    .line 833
    .line 834
    move-result-object v2

    .line 835
    check-cast v2, Ljava/lang/Integer;

    .line 836
    .line 837
    if-nez v2, :cond_20

    .line 838
    .line 839
    move v2, v3

    .line 840
    goto :goto_a

    .line 841
    :cond_20
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 842
    .line 843
    .line 844
    move-result v2

    .line 845
    :goto_a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 846
    .line 847
    .line 848
    move-result-object v2

    .line 849
    invoke-static {v1, v0, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    .line 851
    .line 852
    move-result-object v0

    .line 853
    check-cast v0, Ljava/lang/Integer;

    .line 854
    .line 855
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 856
    .line 857
    .line 858
    move-result v0

    .line 859
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 860
    .line 861
    .line 862
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 863
    .line 864
    const/16 v2, 0x55

    .line 865
    .line 866
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 867
    .line 868
    .line 869
    move-result-object v4

    .line 870
    invoke-static {v1, v0, v4}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    .line 872
    .line 873
    move-result-object v0

    .line 874
    check-cast v0, Ljava/lang/Byte;

    .line 875
    .line 876
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    .line 877
    .line 878
    .line 879
    move-result v0

    .line 880
    and-int/lit16 v0, v0, 0xff

    .line 881
    .line 882
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 883
    .line 884
    .line 885
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 886
    .line 887
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 888
    .line 889
    .line 890
    move-result-object v2

    .line 891
    invoke-static {v1, v0, v2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    .line 893
    .line 894
    move-result-object v0

    .line 895
    check-cast v0, Ljava/lang/Byte;

    .line 896
    .line 897
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    .line 898
    .line 899
    .line 900
    move-result v0

    .line 901
    and-int/lit16 v0, v0, 0xff

    .line 902
    .line 903
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailQuality(I)V

    .line 904
    .line 905
    .line 906
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    .line 907
    .line 908
    .line 909
    move-result-object v0

    .line 910
    if-eqz v0, :cond_26

    .line 911
    .line 912
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 913
    .line 914
    .line 915
    move-result v2

    .line 916
    if-lez v2, :cond_26

    .line 917
    .line 918
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 919
    .line 920
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    .line 921
    .line 922
    .line 923
    move-result-object v2

    .line 924
    check-cast v2, Landroid/util/Size;

    .line 925
    .line 926
    if-nez v2, :cond_21

    .line 927
    .line 928
    goto :goto_b

    .line 929
    :cond_21
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    .line 930
    .line 931
    .line 932
    move-result v4

    .line 933
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    .line 934
    .line 935
    .line 936
    move-result v6

    .line 937
    invoke-static {v0, v4, v6}, Landroid/hardware/camera2/legacy/ParameterUtils;->containsSize(Ljava/util/List;II)Z

    .line 938
    .line 939
    .line 940
    move-result v0

    .line 941
    if-nez v0, :cond_22

    .line 942
    .line 943
    move v0, v5

    .line 944
    goto :goto_c

    .line 945
    :cond_22
    :goto_b
    move v0, v3

    .line 946
    :goto_c
    if-eqz v0, :cond_23

    .line 947
    .line 948
    new-instance v4, Ljava/lang/StringBuilder;

    .line 949
    .line 950
    const-string v6, "Invalid JPEG thumbnail size set "

    .line 951
    .line 952
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 953
    .line 954
    .line 955
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 956
    .line 957
    .line 958
    const-string v6, ", skipping thumbnail..."

    .line 959
    .line 960
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    .line 962
    .line 963
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 964
    .line 965
    .line 966
    move-result-object v4

    .line 967
    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    .line 969
    .line 970
    :cond_23
    if-eqz v2, :cond_25

    .line 971
    .line 972
    if-eqz v0, :cond_24

    .line 973
    .line 974
    goto :goto_d

    .line 975
    :cond_24
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    .line 976
    .line 977
    .line 978
    move-result v0

    .line 979
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    .line 980
    .line 981
    .line 982
    move-result v2

    .line 983
    invoke-virtual {p0, v0, v2}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 984
    .line 985
    .line 986
    goto :goto_e

    .line 987
    :cond_25
    :goto_d
    invoke-virtual {p0, v3, v3}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 988
    .line 989
    .line 990
    :cond_26
    :goto_e
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 991
    .line 992
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 993
    .line 994
    .line 995
    move-result-object v0

    .line 996
    invoke-static {v1, p0, v0}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    .line 998
    .line 999
    move-result-object p0

    .line 1000
    check-cast p0, Ljava/lang/Integer;

    .line 1001
    .line 1002
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 1003
    .line 1004
    .line 1005
    move-result p0

    .line 1006
    if-eq p0, v5, :cond_27

    .line 1007
    .line 1008
    const/4 v0, 0x2

    .line 1009
    if-eq p0, v0, :cond_27

    .line 1010
    .line 1011
    const-string v0, "convertRequestToMetadata - Ignoring unsupported noiseReduction.mode = "

    .line 1012
    .line 1013
    invoke-static {v0, p0, v7}, Landroid/app/m;->A(Ljava/lang/String;ILjava/lang/String;)V

    .line 1014
    .line 1015
    .line 1016
    :cond_27
    return-void
.end method

.method public static filterSupportedCaptureIntent(I)I
    .locals 1

    .line 1
    const-string v0, "LegacyRequestMapper"

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    const-string p0, "Unsupported control.captureIntent value 1; default to PREVIEW"

    .line 8
    .line 9
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :goto_0
    const-string p0, "Unknown control.captureIntent value 1; default to PREVIEW"

    .line 13
    .line 14
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    :pswitch_1
    return p0

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static getIfSupported(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;ZLjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;ZTT;)TT;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p3, :cond_1

    .line 6
    .line 7
    invoke-static {p0, p4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, " is not supported; ignoring requested value "

    .line 26
    .line 27
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string p1, "LegacyRequestMapper"

    .line 38
    .line 39
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    :cond_0
    const/4 p0, 0x0

    .line 43
    :cond_1
    return-object p0
.end method

.method private static mapAeAndFlashMode(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V
    .locals 7

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {p0, v0, v1}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {p0, v1, v3}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string/jumbo v3, "off"

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v3}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 v3, 0x0

    .line 50
    :goto_0
    const/4 v4, 0x2

    .line 51
    const-string/jumbo v5, "on"

    .line 52
    .line 53
    .line 54
    const-string v6, "LegacyRequestMapper"

    .line 55
    .line 56
    if-ne p0, v2, :cond_4

    .line 57
    .line 58
    if-ne v0, v4, :cond_2

    .line 59
    .line 60
    const-string/jumbo p0, "torch"

    .line 61
    .line 62
    .line 63
    invoke-static {v1, p0}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    :goto_1
    move-object v3, p0

    .line 70
    goto :goto_3

    .line 71
    :cond_1
    const-string/jumbo p0, "mapAeAndFlashMode - Ignore flash.mode == TORCH;camera does not support it"

    .line 72
    .line 73
    .line 74
    invoke-static {v6, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_2
    if-ne v0, v2, :cond_a

    .line 79
    .line 80
    invoke-static {v1, v5}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-eqz p0, :cond_3

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_3
    const-string/jumbo p0, "mapAeAndFlashMode - Ignore flash.mode == SINGLE;camera does not support it"

    .line 88
    .line 89
    .line 90
    invoke-static {v6, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_4
    const/4 v0, 0x3

    .line 95
    if-ne p0, v0, :cond_6

    .line 96
    .line 97
    invoke-static {v1, v5}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    if-eqz p0, :cond_5

    .line 102
    .line 103
    :goto_2
    move-object v3, v5

    .line 104
    goto :goto_3

    .line 105
    :cond_5
    const-string/jumbo p0, "mapAeAndFlashMode - Ignore control.aeMode == ON_ALWAYS_FLASH;camera does not support it"

    .line 106
    .line 107
    .line 108
    invoke-static {v6, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_6
    if-ne p0, v4, :cond_8

    .line 113
    .line 114
    const-string p0, "auto"

    .line 115
    .line 116
    invoke-static {v1, p0}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_7

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_7
    const-string/jumbo p0, "mapAeAndFlashMode - Ignore control.aeMode == ON_AUTO_FLASH;camera does not support it"

    .line 124
    .line 125
    .line 126
    invoke-static {v6, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_8
    const/4 v0, 0x4

    .line 131
    if-ne p0, v0, :cond_a

    .line 132
    .line 133
    const-string/jumbo p0, "red-eye"

    .line 134
    .line 135
    .line 136
    invoke-static {v1, p0}, Landroid/hardware/camera2/utils/ListUtils;->listContains(Ljava/util/List;Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_9

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_9
    const-string/jumbo p0, "mapAeAndFlashMode - Ignore control.aeMode == ON_AUTO_FLASH_REDEYE;camera does not support it"

    .line 144
    .line 145
    .line 146
    invoke-static {v6, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    :cond_a
    :goto_3
    if-eqz v3, :cond_b

    .line 150
    .line 151
    invoke-virtual {p1, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    :cond_b
    return-void
.end method
