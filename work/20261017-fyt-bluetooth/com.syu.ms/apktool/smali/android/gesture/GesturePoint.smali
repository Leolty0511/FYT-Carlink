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
    iput p1, p0, Landroid/gesture/GesturePoint;->x:F

    .line 3
    iput p2, p0, Landroid/gesture/GesturePoint;->y:F

    .line 4
    iput-wide p3, p0, Landroid/gesture/GesturePoint;->timestamp:J

    return-void
.end method

.method public static deserialize(Ljava/io/DataInputStream;)Landroid/gesture/GesturePoint;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    .line 2
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    .line 3
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    .line 4
    new-instance p0, Landroid/gesture/GesturePoint;

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    return-object p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Landroid/gesture/GesturePoint;

    iget v1, p0, Landroid/gesture/GesturePoint;->x:F

    iget v2, p0, Landroid/gesture/GesturePoint;->y:F

    iget-wide v3, p0, Landroid/gesture/GesturePoint;->timestamp:J

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    return-object v0
.end method
