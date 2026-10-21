.class public final Lf/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:Lf/k;


# direct methods
.method public constructor <init>(Lf/k;IJ)V
    .locals 0

    iput-object p1, p0, Lf/a;->d:Lf/k;

    iput p2, p0, Lf/a;->b:I

    iput-wide p3, p0, Lf/a;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lf/a;->d:Lf/k;

    .line 2
    .line 3
    iget v1, p0, Lf/a;->b:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v3

    .line 10
    iget-wide v5, p0, Lf/a;->c:J

    .line 11
    .line 12
    invoke-virtual/range {v0 .. v6}, Lf/k;->k(IIJJ)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
