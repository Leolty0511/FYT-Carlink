.class public Lo1/j0$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo1/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo1/j0$a$a;
    }
.end annotation


# static fields
.field public static final f:Lo1/j0$a;

.field public static final g:Lo1/j0$a;

.field public static final h:Lo1/j0$a;


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:[Ljava/lang/Runnable;

.field public final d:J

.field public e:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lo1/j0$a;

    const-wide/16 v1, 0xa

    invoke-direct {v0, v1, v2}, Lo1/j0$a;-><init>(J)V

    sput-object v0, Lo1/j0$a;->f:Lo1/j0$a;

    .line 2
    new-instance v0, Lo1/j0$a;

    const-wide/16 v1, 0x64

    invoke-direct {v0, v1, v2}, Lo1/j0$a;-><init>(J)V

    sput-object v0, Lo1/j0$a;->g:Lo1/j0$a;

    .line 3
    new-instance v0, Lo1/j0$a;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Lo1/j0$a;-><init>(J)V

    sput-object v0, Lo1/j0$a;->h:Lo1/j0$a;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lo1/j0$a;->a:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lo1/j0$a;->b:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lo1/j0$a;->c:[Ljava/lang/Runnable;

    .line 5
    iput-wide p1, p0, Lo1/j0$a;->d:J

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TickThread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lo1/j0$a;->e:J

    .line 8
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 9
    invoke-static {}, Lo1/j0$a$a;->a()Lo1/j0$a$a;

    move-result-object p1

    invoke-static {p1, p0}, Lo1/j0$a$a;->b(Lo1/j0$a$a;Lo1/j0$a;)V

    return-void
.end method

.method public static synthetic a(Lo1/j0$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lo1/j0$a;->e:J

    return-wide v0
.end method

.method public static synthetic b(Lo1/j0$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lo1/j0$a;->d:J

    return-wide v0
.end method


# virtual methods
.method public c(Ljava/lang/Runnable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lo1/j0$a;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lo1/j0$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lo1/j0$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lo1/j0$a;->b:Z

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public run()V
    .locals 6

    .line 1
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo1/j0$a;->e:J

    .line 2
    iget-boolean v0, p0, Lo1/j0$a;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iput-boolean v1, p0, Lo1/j0$a;->b:Z

    .line 4
    iget-object v0, p0, Lo1/j0$a;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lo1/j0$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Runnable;

    iput-object v2, p0, Lo1/j0$a;->c:[Ljava/lang/Runnable;

    .line 6
    iget-object v3, p0, Lo1/j0$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 7
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_1
    iget-object v0, p0, Lo1/j0$a;->c:[Ljava/lang/Runnable;

    array-length v2, v0

    :goto_2
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lo1/j0$a;->e:J

    .line 10
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 11
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lo1/j0$a;->e:J

    sub-long/2addr v0, v2

    .line 12
    iget-wide v2, p0, Lo1/j0$a;->d:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    sub-long/2addr v2, v0

    .line 13
    invoke-static {v2, v3}, La/i;->a0(J)V

    goto :goto_0
.end method
