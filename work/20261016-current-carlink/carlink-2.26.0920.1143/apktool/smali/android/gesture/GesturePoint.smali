.class public Landroid/gesture/GesturePoint;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final timestamp:J

.field public final x:F

.field public final y:F


# direct methods
.method public constructor <init>(FFJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/gesture/GesturePoint;->x:F

    .line 5
    .line 6
    iput p2, p0, Landroid/gesture/GesturePoint;->y:F

    .line 7
    .line 8
    iput-wide p3, p0, Landroid/gesture/GesturePoint;->timestamp:J

    .line 9
    .line 10
    return-void
.end method

.method public static deserialize(Ljava/io/DataInputStream;)Landroid/gesture/GesturePoint;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    new-instance p0, Landroid/gesture/GesturePoint;

    .line 14
    .line 15
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5

    new-instance v0, Landroid/gesture/GesturePoint;

    iget v1, p0, Landroid/gesture/GesturePoint;->x:F

    iget v2, p0, Landroid/gesture/GesturePoint;->y:F

    iget-wide v3, p0, Landroid/gesture/GesturePoint;->timestamp:J

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    return-object v0
.end method
