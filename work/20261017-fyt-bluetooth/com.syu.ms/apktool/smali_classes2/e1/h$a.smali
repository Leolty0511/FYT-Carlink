.class public Le1/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le1/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Le1/h;


# direct methods
.method public constructor <init>(Le1/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le1/h$a;->b:Le1/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Le1/h$a;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget v0, p0, Le1/h$a;->a:I

    sget v1, Lu0/b;->f:I

    if-eq v0, v1, :cond_0

    .line 2
    iput v1, p0, Le1/h$a;->a:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 3
    iget-object v1, p0, Le1/h$a;->b:Le1/h;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Le1/h;->B:J

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Le1/h;->H:J

    .line 5
    iget-object v1, p0, Le1/h$a;->b:Le1/h;

    iput-boolean v0, v1, Le1/h;->F:Z

    .line 6
    iput-boolean v0, v1, Le1/h;->E:Z

    :cond_0
    return-void
.end method
