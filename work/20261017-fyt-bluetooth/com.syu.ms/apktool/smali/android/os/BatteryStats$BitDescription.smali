.class public final Landroid/os/BatteryStats$BitDescription;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BitDescription"
.end annotation


# instance fields
.field public final mask:I

.field public final name:Ljava/lang/String;

.field public final shift:I

.field public final values:[Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Landroid/os/BatteryStats$BitDescription;->mask:I

    .line 8
    iput p2, p0, Landroid/os/BatteryStats$BitDescription;->shift:I

    .line 9
    iput-object p3, p0, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/os/BatteryStats$BitDescription;->mask:I

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Landroid/os/BatteryStats$BitDescription;->shift:I

    .line 4
    iput-object p2, p0, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    return-void
.end method
