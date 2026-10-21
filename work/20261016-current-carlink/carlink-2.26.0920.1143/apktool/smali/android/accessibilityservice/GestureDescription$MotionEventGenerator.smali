.class public Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/GestureDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MotionEventGenerator"
.end annotation


# static fields
.field private static sCurrentTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCurrentTouchPoints(I)[Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .locals 3

    .line 1
    sget-object v0, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sCurrentTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    array-length v0, v0

    .line 6
    if-ge v0, p0, :cond_1

    .line 7
    .line 8
    :cond_0
    new-array v0, p0, [Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 9
    .line 10
    sput-object v0, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sCurrentTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-ge v0, p0, :cond_1

    .line 14
    .line 15
    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sCurrentTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 16
    .line 17
    new-instance v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 18
    .line 19
    invoke-direct {v2}, Landroid/accessibilityservice/GestureDescription$TouchPoint;-><init>()V

    .line 20
    .line 21
    .line 22
    aput-object v2, v1, v0

    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    sget-object p0, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sCurrentTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 28
    .line 29
    return-object p0
.end method

.method public static getGestureStepsFromGestureDescription(Landroid/accessibilityservice/GestureDescription;I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accessibilityservice/GestureDescription;",
            "I)",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/GestureDescription$GestureStep;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/accessibilityservice/GestureDescription;->getStrokeCount()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->getCurrentTouchPoints(I)[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    invoke-static {p0, v2, v3}, Landroid/accessibilityservice/GestureDescription;->access$200(Landroid/accessibilityservice/GestureDescription;J)J

    .line 17
    .line 18
    .line 19
    move-result-wide v4

    .line 20
    const/4 v6, 0x0

    .line 21
    move-wide v7, v2

    .line 22
    :goto_0
    cmp-long v9, v4, v2

    .line 23
    .line 24
    if-ltz v9, :cond_1

    .line 25
    .line 26
    if-nez v6, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    int-to-long v9, p1

    .line 30
    add-long/2addr v7, v9

    .line 31
    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    :goto_1
    move-wide v7, v4

    .line 36
    invoke-static {p0, v7, v8, v1}, Landroid/accessibilityservice/GestureDescription;->access$300(Landroid/accessibilityservice/GestureDescription;J[Landroid/accessibilityservice/GestureDescription$TouchPoint;)I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    new-instance v4, Landroid/accessibilityservice/GestureDescription$GestureStep;

    .line 41
    .line 42
    invoke-direct {v4, v7, v8, v6, v1}, Landroid/accessibilityservice/GestureDescription$GestureStep;-><init>(JI[Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    const-wide/16 v4, 0x1

    .line 49
    .line 50
    add-long/2addr v4, v7

    .line 51
    invoke-static {p0, v4, v5}, Landroid/accessibilityservice/GestureDescription;->access$200(Landroid/accessibilityservice/GestureDescription;J)J

    .line 52
    .line 53
    .line 54
    move-result-wide v4

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    return-object v0
.end method
