.class public Lcom/android/internal/os/BatteryStatsImpl$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:I

.field public b:J

.field public c:I

.field public final synthetic d:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;IJI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$d;->d:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$d;->a:I

    .line 3
    iput-wide p3, p0, Lcom/android/internal/os/BatteryStatsImpl$d;->b:J

    .line 4
    iput p5, p0, Lcom/android/internal/os/BatteryStatsImpl$d;->c:I

    return-void
.end method
