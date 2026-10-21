.class final Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ScriptGroup$Closure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ValueAndSize"
.end annotation


# instance fields
.field public size:I

.field public value:J


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    instance-of v0, p2, Landroid/renderscript/Allocation;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p2, Landroid/renderscript/Allocation;

    .line 9
    .line 10
    invoke-virtual {p2, p1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 11
    .line 12
    .line 13
    move-result-wide p1

    .line 14
    iput-wide p1, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    .line 15
    .line 16
    const/4 p1, -0x1

    .line 17
    iput p1, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    instance-of p1, p2, Ljava/lang/Boolean;

    .line 21
    .line 22
    const/4 v0, 0x4

    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    check-cast p2, Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    const-wide/16 p1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-wide/16 p1, 0x0

    .line 37
    .line 38
    :goto_0
    iput-wide p1, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    .line 39
    .line 40
    iput v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    instance-of p1, p2, Ljava/lang/Integer;

    .line 44
    .line 45
    if-eqz p1, :cond_3

    .line 46
    .line 47
    check-cast p2, Ljava/lang/Integer;

    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/Integer;->longValue()J

    .line 50
    .line 51
    .line 52
    move-result-wide p1

    .line 53
    iput-wide p1, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    .line 54
    .line 55
    iput v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    instance-of p1, p2, Ljava/lang/Long;

    .line 59
    .line 60
    const/16 v1, 0x8

    .line 61
    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    check-cast p2, Ljava/lang/Long;

    .line 65
    .line 66
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 67
    .line 68
    .line 69
    move-result-wide p1

    .line 70
    iput-wide p1, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    .line 71
    .line 72
    iput v1, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    instance-of p1, p2, Ljava/lang/Float;

    .line 76
    .line 77
    if-eqz p1, :cond_5

    .line 78
    .line 79
    check-cast p2, Ljava/lang/Float;

    .line 80
    .line 81
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    int-to-long p1, p1

    .line 90
    iput-wide p1, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    .line 91
    .line 92
    iput v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    instance-of p1, p2, Ljava/lang/Double;

    .line 96
    .line 97
    if-eqz p1, :cond_6

    .line 98
    .line 99
    check-cast p2, Ljava/lang/Double;

    .line 100
    .line 101
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 102
    .line 103
    .line 104
    move-result-wide p1

    .line 105
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 106
    .line 107
    .line 108
    move-result-wide p1

    .line 109
    iput-wide p1, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    .line 110
    .line 111
    iput v1, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    .line 112
    .line 113
    :cond_6
    :goto_1
    return-void
.end method
