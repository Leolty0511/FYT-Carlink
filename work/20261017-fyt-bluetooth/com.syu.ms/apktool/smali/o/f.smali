.class public final Lo/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static n:Lo/f;

.field public static o:I

.field public static p:Ljava/lang/Object;


# instance fields
.field public a:Lo/f;

.field public b:Z

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/f;->p:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lo/f;
    .locals 4

    .line 1
    sget-object v0, Lo/f;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget v1, Lo/f;->o:I

    if-lez v1, :cond_0

    .line 3
    sget-object v2, Lo/f;->n:Lo/f;

    .line 4
    iget-object v3, v2, Lo/f;->a:Lo/f;

    sput-object v3, Lo/f;->n:Lo/f;

    const/4 v3, 0x0

    .line 5
    iput-object v3, v2, Lo/f;->a:Lo/f;

    const/4 v3, 0x0

    .line 6
    iput-boolean v3, v2, Lo/f;->b:Z

    add-int/lit8 v1, v1, -0x1

    .line 7
    sput v1, Lo/f;->o:I

    .line 8
    monitor-exit v0

    return-object v2

    .line 9
    :cond_0
    new-instance v1, Lo/f;

    invoke-direct {v1}, Lo/f;-><init>()V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lo/f;->c:Ljava/lang/Object;

    .line 2
    iput-object v0, p0, Lo/f;->d:Ljava/lang/Object;

    .line 3
    iput-object v0, p0, Lo/f;->e:Ljava/lang/Object;

    .line 4
    iput-object v0, p0, Lo/f;->f:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lo/f;->g:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lo/f;->h:I

    .line 7
    iput v0, p0, Lo/f;->i:I

    .line 8
    iput v0, p0, Lo/f;->j:I

    .line 9
    iput v0, p0, Lo/f;->k:I

    .line 10
    iput v0, p0, Lo/f;->l:I

    .line 11
    iput v0, p0, Lo/f;->m:I

    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lo/f;->b:Z

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lo/f;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lo/f;->a()V

    .line 4
    sget v1, Lo/f;->o:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 5
    sget-object v2, Lo/f;->n:Lo/f;

    iput-object v2, p0, Lo/f;->a:Lo/f;

    const/4 v2, 0x1

    .line 6
    iput-boolean v2, p0, Lo/f;->b:Z

    .line 7
    sput-object p0, Lo/f;->n:Lo/f;

    add-int/2addr v1, v2

    .line 8
    sput v1, Lo/f;->o:I

    .line 9
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 10
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already recycled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
