.class public Lo1/x$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo1/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Ly/b;

.field public c:[I

.field public d:[F

.field public e:[Ljava/lang/String;

.field public f:Ljava/lang/StringBuffer;

.field public final synthetic g:Lo1/x;


# direct methods
.method public constructor <init>(Lo1/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo1/x$a;->g:Lo1/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lo1/x$a;->f:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lo1/x$a;->g:Lo1/x;

    iget-object v0, v0, Lo1/x;->c:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lo1/x$a;->g:Lo1/x;

    iget-object v0, v0, Lo1/x;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lo1/x$a;->g:Lo1/x;

    iget-object v1, v1, Lo1/x;->i:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " >>>>> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo1/x$a;->g:Lo1/x;

    invoke-static {v1}, Lo1/x;->b(Lo1/x;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Offer Task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lo1/x$a;->b(Ljava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final b(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo1/x$a;->g:Lo1/x;

    iget-boolean v0, v0, Lo1/x;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lo1/x$a;->f:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 3
    iget-object v0, p0, Lo1/x$a;->f:Ljava/lang/StringBuffer;

    const-string v1, "  \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    iget-object v0, p0, Lo1/x$a;->f:Ljava/lang/StringBuffer;

    const-string v1, "************************\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    iget-object v0, p0, Lo1/x$a;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    iget-object p1, p0, Lo1/x$a;->f:Ljava/lang/StringBuffer;

    const-string v0, " for :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lo1/x$a;->g:Lo1/x;

    iget-object v1, p0, Lo1/x$a;->b:Ly/b;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo1/x;->f(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    iget-object p1, p0, Lo1/x$a;->f:Ljava/lang/StringBuffer;

    const-string v0, "\ndata :[ "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    iget-object p1, p0, Lo1/x$a;->f:Ljava/lang/StringBuffer;

    const-string v0, "updateCode  : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lo1/x$a;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    iget-object p1, p0, Lo1/x$a;->c:[I

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lo1/x$a;->f:Ljava/lang/StringBuffer;

    const-string v1, " ints: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lo1/x$a;->c:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    :cond_1
    iget-object p1, p0, Lo1/x$a;->d:[F

    if-eqz p1, :cond_3

    .line 12
    iget-object p1, p0, Lo1/x$a;->c:[I

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo1/x$a;->f:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    :cond_2
    iget-object p1, p0, Lo1/x$a;->f:Ljava/lang/StringBuffer;

    const-string v1, " flts: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lo1/x$a;->d:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 14
    :cond_3
    iget-object p1, p0, Lo1/x$a;->e:[Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 15
    iget-object p1, p0, Lo1/x$a;->c:[I

    if-nez p1, :cond_4

    iget-object p1, p0, Lo1/x$a;->d:[F

    if-eqz p1, :cond_5

    .line 16
    :cond_4
    iget-object p1, p0, Lo1/x$a;->f:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    :cond_5
    iget-object p1, p0, Lo1/x$a;->f:Ljava/lang/StringBuffer;

    const-string v0, " strs: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lo1/x$a;->e:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    :cond_6
    iget-object p1, p0, Lo1/x$a;->f:Ljava/lang/StringBuffer;

    const-string v0, " ]\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x1

    if-ne p2, p1, :cond_7

    .line 19
    iget-object p1, p0, Lo1/x$a;->f:Ljava/lang/StringBuffer;

    const-string p2, "usingHandlers size:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lo1/x$a;->g:Lo1/x;

    iget-object p2, p2, Lo1/x;->c:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Queue;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p2, " \n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    :cond_7
    iget-object p1, p0, Lo1/x$a;->f:Ljava/lang/StringBuffer;

    const-string p2, "************************"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    iget-object p1, p0, Lo1/x$a;->g:Lo1/x;

    invoke-static {p1}, Lo1/x;->a(Lo1/x;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lo1/x$a;->f:Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public c(Ly/b;I[I[F[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo1/x$a;->b:Ly/b;

    .line 2
    iput p2, p0, Lo1/x$a;->a:I

    .line 3
    iput-object p3, p0, Lo1/x$a;->c:[I

    .line 4
    iput-object p4, p0, Lo1/x$a;->d:[F

    .line 5
    iput-object p5, p0, Lo1/x$a;->e:[Ljava/lang/String;

    return-void
.end method

.method public run()V
    .locals 10

    const-string v0, "]"

    const-string v1, " finish!!"

    const-string v2, " for : "

    const-string v3, "update data updateCode : "

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "start update"

    .line 1
    invoke-virtual {p0, v5, v4}, Lo1/x$a;->b(Ljava/lang/String;I)V

    .line 2
    iget-object v5, p0, Lo1/x$a;->b:Ly/b;

    iget v6, p0, Lo1/x$a;->a:I

    iget-object v7, p0, Lo1/x$a;->c:[I

    iget-object v8, p0, Lo1/x$a;->d:[F

    iget-object v9, p0, Lo1/x$a;->e:[Ljava/lang/String;

    invoke-interface {v5, v6, v7, v8, v9}, Ly/b;->H0(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Lo1/x$a;->g:Lo1/x;

    invoke-virtual {v0, p0}, Lo1/x;->j(Lo1/x$a;)V

    .line 4
    iget-object v0, p0, Lo1/x$a;->g:Lo1/x;

    iget-boolean v4, v0, Lo1/x;->d:Z

    if-eqz v4, :cond_0

    invoke-static {v0}, Lo1/x;->a(Lo1/x;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lo1/x$a;->a:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo1/x$a;->g:Lo1/x;

    iget-object v3, p0, Lo1/x$a;->b:Ly/b;

    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo1/x;->f(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v5

    .line 5
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update data-- ERROR!! ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lo1/x$a;->b(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    iget-object v0, p0, Lo1/x$a;->g:Lo1/x;

    invoke-virtual {v0, p0}, Lo1/x;->j(Lo1/x$a;)V

    .line 8
    iget-object v0, p0, Lo1/x$a;->g:Lo1/x;

    iget-boolean v4, v0, Lo1/x;->d:Z

    if-eqz v4, :cond_0

    invoke-static {v0}, Lo1/x;->a(Lo1/x;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catch_1
    move-exception v5

    .line 9
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update data-- DeadObjectException!! ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lo1/x$a;->b(Ljava/lang/String;I)V

    .line 10
    iget-object v0, p0, Lo1/x$a;->g:Lo1/x;

    iget-object v4, p0, Lo1/x$a;->b:Ly/b;

    invoke-virtual {v0, v4}, Lo1/x;->q(Ly/b;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    iget-object v0, p0, Lo1/x$a;->g:Lo1/x;

    invoke-virtual {v0, p0}, Lo1/x;->j(Lo1/x$a;)V

    .line 12
    iget-object v0, p0, Lo1/x$a;->g:Lo1/x;

    iget-boolean v4, v0, Lo1/x;->d:Z

    if-eqz v4, :cond_0

    invoke-static {v0}, Lo1/x;->a(Lo1/x;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_0

    :cond_0
    :goto_1
    return-void

    .line 13
    :goto_2
    iget-object v4, p0, Lo1/x$a;->g:Lo1/x;

    invoke-virtual {v4, p0}, Lo1/x;->j(Lo1/x$a;)V

    .line 14
    iget-object v4, p0, Lo1/x$a;->g:Lo1/x;

    iget-boolean v5, v4, Lo1/x;->d:Z

    if-eqz v5, :cond_1

    invoke-static {v4}, Lo1/x;->a(Lo1/x;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lo1/x$a;->a:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo1/x$a;->g:Lo1/x;

    iget-object v3, p0, Lo1/x$a;->b:Ly/b;

    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo1/x;->f(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_1
    throw v0
.end method
