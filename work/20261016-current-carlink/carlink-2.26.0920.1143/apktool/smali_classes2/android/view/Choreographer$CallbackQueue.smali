.class final Landroid/view/Choreographer$CallbackQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CallbackQueue"
.end annotation


# instance fields
.field private mHead:Landroid/view/Choreographer$CallbackRecord;

.field final synthetic this$0:Landroid/view/Choreographer;


# direct methods
.method private constructor <init>(Landroid/view/Choreographer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/Choreographer$CallbackQueue;->this$0:Landroid/view/Choreographer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/Choreographer;Landroid/view/Choreographer$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/view/Choreographer$CallbackQueue;-><init>(Landroid/view/Choreographer;)V

    return-void
.end method


# virtual methods
.method public addCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->this$0:Landroid/view/Choreographer;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3, p4}, Landroid/view/Choreographer;->access$500(Landroid/view/Choreographer;JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    iget-object p4, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .line 8
    .line 9
    if-nez p4, :cond_0

    .line 10
    .line 11
    iput-object p3, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-wide v0, p4, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    .line 15
    .line 16
    cmp-long v0, p1, v0

    .line 17
    .line 18
    if-gez v0, :cond_1

    .line 19
    .line 20
    iput-object p4, p3, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 21
    .line 22
    iput-object p3, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    :goto_0
    iget-object v0, p4, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    iget-wide v1, v0, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    .line 30
    .line 31
    cmp-long v1, p1, v1

    .line 32
    .line 33
    if-gez v1, :cond_2

    .line 34
    .line 35
    iput-object v0, p3, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move-object p4, v0

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    :goto_1
    iput-object p3, p4, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 41
    .line 42
    return-void
.end method

.method public extractDueCallbacksLocked(J)Landroid/view/Choreographer$CallbackRecord;
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-wide v2, v0, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    .line 7
    .line 8
    cmp-long v2, v2, p1

    .line 9
    .line 10
    if-lez v2, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    iget-object v2, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 14
    .line 15
    move-object v3, v0

    .line 16
    :goto_0
    if-eqz v2, :cond_2

    .line 17
    .line 18
    iget-wide v4, v2, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    .line 19
    .line 20
    cmp-long v4, v4, p1

    .line 21
    .line 22
    if-lez v4, :cond_1

    .line 23
    .line 24
    iput-object v1, v3, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    iget-object v3, v2, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 28
    .line 29
    move-object v6, v3

    .line 30
    move-object v3, v2

    .line 31
    move-object v2, v6

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    :goto_1
    iput-object v2, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_3
    :goto_2
    return-object v1
.end method

.method public hasDueCallbacksLocked(J)Z
    .locals 2

    iget-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    cmp-long p1, v0, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public removeCallbacksLocked(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    if-eqz v0, :cond_4

    .line 5
    .line 6
    iget-object v2, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object v3, v0, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    .line 11
    .line 12
    if-ne v3, p1, :cond_1

    .line 13
    .line 14
    :cond_0
    if-eqz p2, :cond_2

    .line 15
    .line 16
    iget-object v3, v0, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    .line 17
    .line 18
    if-ne v3, p2, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-object v1, v0

    .line 22
    goto :goto_3

    .line 23
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 24
    .line 25
    iput-object v2, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_3
    iput-object v2, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .line 29
    .line 30
    :goto_2
    iget-object v3, p0, Landroid/view/Choreographer$CallbackQueue;->this$0:Landroid/view/Choreographer;

    .line 31
    .line 32
    invoke-static {v3, v0}, Landroid/view/Choreographer;->access$600(Landroid/view/Choreographer;Landroid/view/Choreographer$CallbackRecord;)V

    .line 33
    .line 34
    .line 35
    :goto_3
    move-object v0, v2

    .line 36
    goto :goto_0

    .line 37
    :cond_4
    return-void
.end method
