.class public Lo1/j0$a$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo1/j0$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final e:Lo1/j0$a$a;


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo1/j0$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:[Lo1/j0$a;

.field public d:Ljava/lang/StringBuffer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lo1/j0$a$a;

    invoke-direct {v0}, Lo1/j0$a$a;-><init>()V

    sput-object v0, Lo1/j0$a$a;->e:Lo1/j0$a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo1/j0$a$a;->a:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lo1/j0$a$a;->b:Z

    .line 4
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static synthetic a()Lo1/j0$a$a;
    .locals 1

    .line 1
    invoke-static {}, Lo1/j0$a$a;->d()Lo1/j0$a$a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Lo1/j0$a$a;Lo1/j0$a;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lo1/j0$a$a;->c(Lo1/j0$a;)V

    return-void
.end method

.method public static d()Lo1/j0$a$a;
    .locals 1

    .line 1
    sget-object v0, Lo1/j0$a$a;->e:Lo1/j0$a$a;

    return-object v0
.end method


# virtual methods
.method public final c(Lo1/j0$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo1/j0$a$a;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lo1/j0$a$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lo1/j0$a$a;->b:Z

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 23

    move-object/from16 v1, p0

    .line 1
    :goto_0
    sget v0, Lu0/b;->n4:I

    if-eqz v0, :cond_a

    sget v0, Lu0/b;->f:I

    if-eqz v0, :cond_a

    sget v0, Lu0/b;->a0:I

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3
    iget-boolean v0, v1, Lo1/j0$a$a;->b:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 4
    iput-boolean v4, v1, Lo1/j0$a$a;->b:Z

    .line 5
    iget-object v5, v1, Lo1/j0$a$a;->a:Ljava/util/ArrayList;

    monitor-enter v5

    .line 6
    :try_start_0
    iget-object v0, v1, Lo1/j0$a$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lo1/j0$a;

    iput-object v0, v1, Lo1/j0$a$a;->c:[Lo1/j0$a;

    .line 7
    iget-object v6, v1, Lo1/j0$a$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 8
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 9
    :cond_1
    :goto_1
    iget-object v0, v1, Lo1/j0$a$a;->c:[Lo1/j0$a;

    array-length v5, v0

    move v6, v4

    :goto_2
    const-wide/16 v7, 0x3e8

    if-ge v6, v5, :cond_9

    aget-object v9, v0, v6

    .line 10
    invoke-static {v9}, Lo1/j0$a;->a(Lo1/j0$a;)J

    move-result-wide v10

    sub-long v10, v2, v10

    const-wide/16 v12, 0x7530

    cmp-long v10, v10, v12

    if-lez v10, :cond_8

    .line 11
    invoke-static {}, Lo1/j0;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-static {}, La/f;->k()Ln1/c;

    move-result-object v14

    const/4 v15, 0x0

    const-string v16, "tick error"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5b9a\u65f6\u5668\u88ab\u963b\u585e \u5b9a\u65f6\u5668\u7cbe\u5ea6\u4e3a  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lo1/j0$a;->b(Lo1/j0$a;)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sget-object v18, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    const/16 v19, 0x1e

    const/16 v20, -0x1

    const/16 v21, 0x3c

    const v22, 0x7fffff00

    invoke-virtual/range {v14 .. v22}, Ln1/c;->l(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Paint$Align;IIII)V

    .line 13
    :cond_2
    invoke-virtual {v9}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    if-nez v0, :cond_4

    .line 14
    invoke-static {}, Lo1/j0;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    invoke-static {v12, v13}, La/i;->a0(J)V

    .line 16
    :cond_3
    sget-object v0, La/i;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 17
    :cond_4
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v5, v1, Lo1/j0$a$a;->d:Ljava/lang/StringBuffer;

    .line 18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " startMllis:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lo1/j0$a;->a(Lo1/j0$a;)J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " delta time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lo1/j0$a;->a(Lo1/j0$a;)J

    move-result-wide v10

    sub-long/2addr v2, v10

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " State: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 19
    iget-object v3, v1, Lo1/j0$a$a;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    array-length v2, v0

    :goto_3
    if-ge v4, v2, :cond_6

    aget-object v3, v0, v4

    .line 21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 22
    iget-object v5, v1, Lo1/j0$a$a;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    iget-object v5, v1, Lo1/j0$a$a;->d:Ljava/lang/StringBuffer;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    invoke-static {}, Lo1/j0;->a()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 25
    invoke-static {}, La/f;->k()Ln1/c;

    move-result-object v14

    const/4 v15, 0x0

    sget-object v18, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    const/16 v19, 0x14

    const/16 v20, -0x1

    const/16 v21, 0x1e

    const v22, 0x7fffff00

    move-object/from16 v16, v3

    move-object/from16 v17, v3

    invoke-virtual/range {v14 .. v22}, Ln1/c;->l(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Paint$Align;IIII)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 26
    :cond_6
    iget-object v0, v1, Lo1/j0$a$a;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo1/j0;->b(Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lo1/j0;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 28
    invoke-static {v12, v13}, La/i;->a0(J)V

    goto :goto_4

    .line 29
    :cond_7
    invoke-static {v7, v8}, La/i;->a0(J)V

    .line 30
    :goto_4
    sget-object v0, La/i;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 31
    :cond_9
    invoke-static {v7, v8}, La/i;->a0(J)V

    goto/16 :goto_0

    :cond_a
    :goto_5
    const-wide/16 v2, 0xa

    .line 32
    invoke-static {v2, v3}, Lo1/s0;->C(J)V

    goto/16 :goto_0
.end method
