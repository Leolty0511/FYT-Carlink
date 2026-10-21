.class public final Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final METRES_PER_LATITUDE_DEGREE:I = 0x1b210

.field public static final SINK_PROVIDER:Ljava/lang/String; = "Sink"


# instance fields
.field private mFinished:Z

.field private final mLoop:Z

.field private mNextPointIndex:I

.field private final mPointTimes:[D

.field private final mPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/sink/debug/simulation/SimulationRoutePoint;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeElapsed:D

.field private mTimeToNextPoint:D

.field private final mTotalTime:D


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/projection/sink/debug/simulation/SimulationRoutePoint;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mPoints:Ljava/util/List;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mLoop:Z

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    new-array p2, p2, [D

    .line 13
    .line 14
    iput-object p2, p0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mPointTimes:[D

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    move v0, p2

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    add-int/lit8 v1, v1, -0x1

    .line 23
    .line 24
    if-ge v0, v1, :cond_0

    .line 25
    .line 26
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/google/android/projection/sink/debug/simulation/SimulationRoutePoint;

    .line 31
    .line 32
    add-int/lit8 v2, v0, 0x1

    .line 33
    .line 34
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lcom/google/android/projection/sink/debug/simulation/SimulationRoutePoint;

    .line 39
    .line 40
    iget-object v4, p0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mPointTimes:[D

    .line 41
    .line 42
    iget-wide v5, v1, Lcom/google/android/projection/sink/debug/simulation/SimulationRoutePoint;->lat:D

    .line 43
    .line 44
    iget-wide v7, v1, Lcom/google/android/projection/sink/debug/simulation/SimulationRoutePoint;->lng:D

    .line 45
    .line 46
    iget-wide v9, v3, Lcom/google/android/projection/sink/debug/simulation/SimulationRoutePoint;->lat:D

    .line 47
    .line 48
    iget-wide v11, v3, Lcom/google/android/projection/sink/debug/simulation/SimulationRoutePoint;->lng:D

    .line 49
    .line 50
    invoke-static/range {v5 .. v12}, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->getDistance(DDDD)D

    .line 51
    .line 52
    .line 53
    move-result-wide v5

    .line 54
    iget-wide v7, v1, Lcom/google/android/projection/sink/debug/simulation/SimulationRoutePoint;->speed:D

    .line 55
    .line 56
    div-double/2addr v5, v7

    .line 57
    aput-wide v5, v4, v0

    .line 58
    .line 59
    move v0, v2

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mPointTimes:[D

    .line 62
    .line 63
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    add-int/lit8 p1, p1, -0x1

    .line 68
    .line 69
    const-wide/16 v1, 0x0

    .line 70
    .line 71
    aput-wide v1, v0, p1

    .line 72
    .line 73
    iget-object p1, p0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mPointTimes:[D

    .line 74
    .line 75
    array-length v0, p1

    .line 76
    :goto_1
    if-ge p2, v0, :cond_1

    .line 77
    .line 78
    aget-wide v3, p1, p2

    .line 79
    .line 80
    add-double/2addr v1, v3

    .line 81
    add-int/lit8 p2, p2, 0x1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    iput-wide v1, p0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mTotalTime:D

    .line 85
    .line 86
    return-void
.end method

.method private static getDistance(DDDD)D
    .locals 2

    .line 1
    sub-double/2addr p4, p0

    .line 2
    invoke-static {p4, p5}, Ljava/lang/Math;->abs(D)D

    .line 3
    .line 4
    .line 5
    move-result-wide p4

    .line 6
    const-wide v0, 0x40fb210000000000L    # 111120.0

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    mul-double/2addr p4, v0

    .line 12
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    .line 13
    .line 14
    .line 15
    move-result-wide p0

    .line 16
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    .line 17
    .line 18
    .line 19
    move-result-wide p0

    .line 20
    mul-double/2addr p0, v0

    .line 21
    sub-double/2addr p6, p2

    .line 22
    invoke-static {p6, p7}, Ljava/lang/Math;->abs(D)D

    .line 23
    .line 24
    .line 25
    move-result-wide p2

    .line 26
    mul-double/2addr p2, p0

    .line 27
    mul-double/2addr p4, p4

    .line 28
    mul-double/2addr p2, p2

    .line 29
    add-double/2addr p2, p4

    .line 30
    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    .line 31
    .line 32
    .line 33
    move-result-wide p0

    .line 34
    return-wide p0
.end method

.method private static getHeading(DDDD)D
    .locals 0

    .line 1
    sub-double/2addr p6, p2

    .line 2
    invoke-static {p6, p7}, Ljava/lang/Math;->toRadians(D)D

    .line 3
    .line 4
    .line 5
    move-result-wide p2

    .line 6
    sub-double/2addr p4, p0

    .line 7
    invoke-static {p4, p5}, Ljava/lang/Math;->toRadians(D)D

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    .line 12
    .line 13
    .line 14
    move-result-wide p0

    .line 15
    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    .line 16
    .line 17
    .line 18
    move-result-wide p0

    .line 19
    const-wide p2, 0x4076800000000000L    # 360.0

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    add-double/2addr p0, p2

    .line 25
    rem-double/2addr p0, p2

    .line 26
    return-wide p0
.end method


# virtual methods
.method public getLocation()Landroid/location/Location;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Landroid/location/Location;

    .line 4
    .line 5
    const-string v2, "Sink"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget v2, v0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mNextPointIndex:I

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    iget-object v2, v0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mPoints:Ljava/util/List;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/google/android/projection/sink/debug/simulation/SimulationRoutePoint;

    .line 23
    .line 24
    iget-object v4, v0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mPoints:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lcom/google/android/projection/sink/debug/simulation/SimulationRoutePoint;

    .line 31
    .line 32
    iget-wide v4, v2, Lcom/google/android/projection/sink/debug/simulation/SimulationRoutePoint;->lat:D

    .line 33
    .line 34
    invoke-virtual {v1, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 35
    .line 36
    .line 37
    iget-wide v4, v2, Lcom/google/android/projection/sink/debug/simulation/SimulationRoutePoint;->lng:D

    .line 38
    .line 39
    invoke-virtual {v1, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 40
    .line 41
    .line 42
    iget-wide v6, v2, Lcom/google/android/projection/sink/debug/simulation/SimulationRoutePoint;->lat:D

    .line 43
    .line 44
    iget-wide v8, v2, Lcom/google/android/projection/sink/debug/simulation/SimulationRoutePoint;->lng:D

    .line 45
    .line 46
    iget-wide v10, v3, Lcom/google/android/projection/sink/debug/simulation/SimulationRoutePoint;->lat:D

    .line 47
    .line 48
    iget-wide v12, v3, Lcom/google/android/projection/sink/debug/simulation/SimulationRoutePoint;->lng:D

    .line 49
    .line 50
    invoke-static/range {v6 .. v13}, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->getHeading(DDDD)D

    .line 51
    .line 52
    .line 53
    move-result-wide v3

    .line 54
    double-to-float v3, v3

    .line 55
    invoke-virtual {v1, v3}, Landroid/location/Location;->setBearing(F)V

    .line 56
    .line 57
    .line 58
    iget-wide v2, v2, Lcom/google/android/projection/sink/debug/simulation/SimulationRoutePoint;->speed:D

    .line 59
    .line 60
    double-to-float v2, v2

    .line 61
    invoke-virtual {v1, v2}, Landroid/location/Location;->setSpeed(F)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_0
    if-nez v2, :cond_1

    .line 66
    .line 67
    iget-object v2, v0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mPoints:Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    :cond_1
    sub-int/2addr v2, v3

    .line 74
    iget-object v3, v0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mPoints:Ljava/util/List;

    .line 75
    .line 76
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Lcom/google/android/projection/sink/debug/simulation/SimulationRoutePoint;

    .line 81
    .line 82
    iget-object v4, v0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mPoints:Ljava/util/List;

    .line 83
    .line 84
    iget v5, v0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mNextPointIndex:I

    .line 85
    .line 86
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    check-cast v4, Lcom/google/android/projection/sink/debug/simulation/SimulationRoutePoint;

    .line 91
    .line 92
    iget-object v5, v0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mPointTimes:[D

    .line 93
    .line 94
    aget-wide v6, v5, v2

    .line 95
    .line 96
    iget-wide v8, v0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mTimeToNextPoint:D

    .line 97
    .line 98
    sub-double v8, v6, v8

    .line 99
    .line 100
    div-double/2addr v8, v6

    .line 101
    iget-wide v5, v3, Lcom/google/android/projection/sink/debug/simulation/SimulationRoutePoint;->lat:D

    .line 102
    .line 103
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 104
    .line 105
    sub-double/2addr v10, v8

    .line 106
    mul-double/2addr v5, v10

    .line 107
    iget-wide v12, v4, Lcom/google/android/projection/sink/debug/simulation/SimulationRoutePoint;->lat:D

    .line 108
    .line 109
    mul-double/2addr v12, v8

    .line 110
    add-double/2addr v12, v5

    .line 111
    invoke-virtual {v1, v12, v13}, Landroid/location/Location;->setLatitude(D)V

    .line 112
    .line 113
    .line 114
    iget-wide v5, v3, Lcom/google/android/projection/sink/debug/simulation/SimulationRoutePoint;->lng:D

    .line 115
    .line 116
    mul-double/2addr v5, v10

    .line 117
    iget-wide v10, v4, Lcom/google/android/projection/sink/debug/simulation/SimulationRoutePoint;->lng:D

    .line 118
    .line 119
    mul-double/2addr v10, v8

    .line 120
    add-double/2addr v10, v5

    .line 121
    invoke-virtual {v1, v10, v11}, Landroid/location/Location;->setLongitude(D)V

    .line 122
    .line 123
    .line 124
    iget-wide v12, v3, Lcom/google/android/projection/sink/debug/simulation/SimulationRoutePoint;->lat:D

    .line 125
    .line 126
    iget-wide v14, v3, Lcom/google/android/projection/sink/debug/simulation/SimulationRoutePoint;->lng:D

    .line 127
    .line 128
    iget-wide v5, v4, Lcom/google/android/projection/sink/debug/simulation/SimulationRoutePoint;->lat:D

    .line 129
    .line 130
    iget-wide v7, v4, Lcom/google/android/projection/sink/debug/simulation/SimulationRoutePoint;->lng:D

    .line 131
    .line 132
    move-wide/from16 v16, v5

    .line 133
    .line 134
    move-wide/from16 v18, v7

    .line 135
    .line 136
    invoke-static/range {v12 .. v19}, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->getHeading(DDDD)D

    .line 137
    .line 138
    .line 139
    move-result-wide v4

    .line 140
    double-to-float v2, v4

    .line 141
    invoke-virtual {v1, v2}, Landroid/location/Location;->setBearing(F)V

    .line 142
    .line 143
    .line 144
    iget-boolean v2, v0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mFinished:Z

    .line 145
    .line 146
    if-eqz v2, :cond_2

    .line 147
    .line 148
    const/4 v2, 0x0

    .line 149
    goto :goto_0

    .line 150
    :cond_2
    iget-wide v2, v3, Lcom/google/android/projection/sink/debug/simulation/SimulationRoutePoint;->speed:D

    .line 151
    .line 152
    double-to-float v2, v2

    .line 153
    :goto_0
    invoke-virtual {v1, v2}, Landroid/location/Location;->setSpeed(F)V

    .line 154
    .line 155
    .line 156
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 157
    .line 158
    .line 159
    move-result-wide v2

    .line 160
    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setTime(J)V

    .line 161
    .line 162
    .line 163
    const/high16 v2, 0x40a00000    # 5.0f

    .line 164
    .line 165
    invoke-virtual {v1, v2}, Landroid/location/Location;->setAccuracy(F)V

    .line 166
    .line 167
    .line 168
    return-object v1
.end method

.method public getProgress()D
    .locals 4

    iget-wide v0, p0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mTimeElapsed:D

    iget-wide v2, p0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mTotalTime:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public reset()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mNextPointIndex:I

    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mTimeElapsed:D

    .line 7
    .line 8
    return-void
.end method

.method public update(D)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mTimeElapsed:D

    .line 2
    .line 3
    add-double/2addr v0, p1

    .line 4
    iput-wide v0, p0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mTimeElapsed:D

    .line 5
    .line 6
    iget-wide v0, p0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mTimeToNextPoint:D

    .line 7
    .line 8
    sub-double/2addr v0, p1

    .line 9
    iput-wide v0, p0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mTimeToNextPoint:D

    .line 10
    .line 11
    :cond_0
    :goto_0
    iget-wide p1, p0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mTimeToNextPoint:D

    .line 12
    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    cmpg-double v2, p1, v0

    .line 16
    .line 17
    if-gez v2, :cond_2

    .line 18
    .line 19
    iget-object v2, p0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mPointTimes:[D

    .line 20
    .line 21
    iget v3, p0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mNextPointIndex:I

    .line 22
    .line 23
    aget-wide v4, v2, v3

    .line 24
    .line 25
    add-double/2addr p1, v4

    .line 26
    iput-wide p1, p0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mTimeToNextPoint:D

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    add-int/2addr v3, p1

    .line 30
    iput v3, p0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mNextPointIndex:I

    .line 31
    .line 32
    iget-object p2, p0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mPoints:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-ne v3, p2, :cond_0

    .line 39
    .line 40
    iget-boolean p2, p0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mLoop:Z

    .line 41
    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    iput p1, p0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mNextPointIndex:I

    .line 46
    .line 47
    iget-wide p1, p0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mTimeElapsed:D

    .line 48
    .line 49
    iget-wide v0, p0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mTotalTime:D

    .line 50
    .line 51
    sub-double/2addr p1, v0

    .line 52
    iput-wide p1, p0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mTimeElapsed:D

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iput-wide v0, p0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mTimeToNextPoint:D

    .line 56
    .line 57
    iget p2, p0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mNextPointIndex:I

    .line 58
    .line 59
    sub-int/2addr p2, p1

    .line 60
    iput p2, p0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mNextPointIndex:I

    .line 61
    .line 62
    iget-wide v0, p0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mTotalTime:D

    .line 63
    .line 64
    iput-wide v0, p0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mTimeElapsed:D

    .line 65
    .line 66
    iput-boolean p1, p0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->mFinished:Z

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    return-void
.end method
