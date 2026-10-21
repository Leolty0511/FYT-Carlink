.class public final Landroid/os/Message;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field static final FLAGS_TO_CLEAR_ON_COPY_FROM:I = 0x1

.field static final FLAG_ASYNCHRONOUS:I = 0x2

.field static final FLAG_IN_USE:I = 0x1

.field private static final MAX_POOL_SIZE:I = 0x32

.field private static gCheckRecycle:Z = true

.field private static sPool:Landroid/os/Message;

.field private static sPoolSize:I

.field private static final sPoolSync:Ljava/lang/Object;


# instance fields
.field public arg1:I

.field public arg2:I

.field callback:Ljava/lang/Runnable;

.field data:Landroid/os/Bundle;

.field flags:I

.field next:Landroid/os/Message;

.field public obj:Ljava/lang/Object;

.field public replyTo:Landroid/os/Messenger;

.field public sendingUid:I

.field target:Landroid/os/Handler;

.field public what:I

.field when:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Landroid/os/Message$1;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/os/Message$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroid/os/Message;->sendingUid:I

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic access$000(Landroid/os/Message;Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Message;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public static obtain()Landroid/os/Message;
    .locals 3

    .line 1
    sget-object v0, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Landroid/os/Message;->sPool:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    sput-object v2, Landroid/os/Message;->sPool:Landroid/os/Message;

    const/4 v2, 0x0

    .line 4
    iput-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    const/4 v2, 0x0

    .line 5
    iput v2, v1, Landroid/os/Message;->flags:I

    .line 6
    sget v2, Landroid/os/Message;->sPoolSize:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/os/Message;->sPoolSize:I

    .line 7
    monitor-exit v0

    return-object v1

    .line 8
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    return-object v0

    :catchall_0
    move-exception v1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static obtain(Landroid/os/Handler;)Landroid/os/Message;
    .locals 1

    .line 22
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 23
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    return-object v0
.end method

.method public static obtain(Landroid/os/Handler;I)Landroid/os/Message;
    .locals 1

    .line 27
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 28
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 29
    iput p1, v0, Landroid/os/Message;->what:I

    return-object v0
.end method

.method public static obtain(Landroid/os/Handler;III)Landroid/os/Message;
    .locals 1

    .line 34
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 35
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 36
    iput p1, v0, Landroid/os/Message;->what:I

    .line 37
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 38
    iput p3, v0, Landroid/os/Message;->arg2:I

    return-object v0
.end method

.method public static obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    .line 39
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 40
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 41
    iput p1, v0, Landroid/os/Message;->what:I

    .line 42
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 43
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 44
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public static obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    .line 30
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 31
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 32
    iput p1, v0, Landroid/os/Message;->what:I

    .line 33
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public static obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;
    .locals 1

    .line 24
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 25
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 26
    iput-object p1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static obtain(Landroid/os/Message;)Landroid/os/Message;
    .locals 3

    .line 11
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 12
    iget v1, p0, Landroid/os/Message;->what:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 13
    iget v1, p0, Landroid/os/Message;->arg1:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 14
    iget v1, p0, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 15
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 16
    iget-object v1, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 17
    iget v1, p0, Landroid/os/Message;->sendingUid:I

    iput v1, v0, Landroid/os/Message;->sendingUid:I

    .line 18
    iget-object v1, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 19
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v1, v0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 20
    :cond_0
    iget-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    iput-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 21
    iget-object p0, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    iput-object p0, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    return-object v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Landroid/os/Message;->what:I

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Landroid/os/Message;->arg1:I

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Landroid/os/Message;->arg2:I

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const-class v0, Landroid/os/Message;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 36
    .line 37
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    iput-wide v0, p0, Landroid/os/Message;->when:J

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 48
    .line 49
    invoke-static {p1}, Landroid/os/Messenger;->readMessengerOrNullFromParcel(Landroid/os/Parcel;)Landroid/os/Messenger;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    iput p1, p0, Landroid/os/Message;->sendingUid:I

    .line 60
    .line 61
    return-void
.end method

.method public static updateCheckRecycle(I)V
    .locals 1

    const/16 v0, 0x15

    if-ge p0, v0, :cond_0

    const/4 p0, 0x0

    sput-boolean p0, Landroid/os/Message;->gCheckRecycle:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget v0, p1, Landroid/os/Message;->flags:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Landroid/os/Message;->flags:I

    .line 6
    .line 7
    iget v0, p1, Landroid/os/Message;->what:I

    .line 8
    .line 9
    iput v0, p0, Landroid/os/Message;->what:I

    .line 10
    .line 11
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 12
    .line 13
    iput v0, p0, Landroid/os/Message;->arg1:I

    .line 14
    .line 15
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 16
    .line 17
    iput v0, p0, Landroid/os/Message;->arg2:I

    .line 18
    .line 19
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 20
    .line 21
    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 22
    .line 23
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 24
    .line 25
    iput-object v0, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 26
    .line 27
    iget v0, p1, Landroid/os/Message;->sendingUid:I

    .line 28
    .line 29
    iput v0, p0, Landroid/os/Message;->sendingUid:I

    .line 30
    .line 31
    iget-object p1, p1, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Landroid/os/Bundle;

    .line 40
    .line 41
    iput-object p1, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCallback()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getData()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 13
    .line 14
    return-object v0
.end method

.method public getTarget()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    return-object v0
.end method

.method public getWhen()J
    .locals 2

    iget-wide v0, p0, Landroid/os/Message;->when:J

    return-wide v0
.end method

.method public isAsynchronous()Z
    .locals 1

    iget v0, p0, Landroid/os/Message;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInUse()Z
    .locals 2

    iget v0, p0, Landroid/os/Message;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public markInUse()V
    .locals 1

    iget v0, p0, Landroid/os/Message;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/Message;->flags:I

    return-void
.end method

.method public peekData()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    return-object v0
.end method

.method public recycle()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/Message;->isInUse()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget-boolean v0, Landroid/os/Message;->gCheckRecycle:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v1, "This message cannot be recycled because it is still in use."

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0

    .line 20
    :cond_1
    invoke-virtual {p0}, Landroid/os/Message;->recycleUnchecked()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public recycleUnchecked()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroid/os/Message;->flags:I

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput v1, p0, Landroid/os/Message;->what:I

    .line 6
    .line 7
    iput v1, p0, Landroid/os/Message;->arg1:I

    .line 8
    .line 9
    iput v1, p0, Landroid/os/Message;->arg2:I

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object v1, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 15
    .line 16
    const/4 v2, -0x1

    .line 17
    iput v2, p0, Landroid/os/Message;->sendingUid:I

    .line 18
    .line 19
    const-wide/16 v2, 0x0

    .line 20
    .line 21
    iput-wide v2, p0, Landroid/os/Message;->when:J

    .line 22
    .line 23
    iput-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 24
    .line 25
    iput-object v1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 26
    .line 27
    iput-object v1, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 28
    .line 29
    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v1

    .line 32
    :try_start_0
    sget v2, Landroid/os/Message;->sPoolSize:I

    .line 33
    .line 34
    const/16 v3, 0x32

    .line 35
    .line 36
    if-ge v2, v3, :cond_0

    .line 37
    .line 38
    sget-object v3, Landroid/os/Message;->sPool:Landroid/os/Message;

    .line 39
    .line 40
    iput-object v3, p0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 41
    .line 42
    sput-object p0, Landroid/os/Message;->sPool:Landroid/os/Message;

    .line 43
    .line 44
    add-int/2addr v2, v0

    .line 45
    sput v2, Landroid/os/Message;->sPoolSize:I

    .line 46
    .line 47
    :cond_0
    monitor-exit v1

    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw v0
.end method

.method public sendToTarget()V
    .locals 1

    iget-object v0, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setAsynchronous(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Landroid/os/Message;->flags:I

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x2

    .line 6
    .line 7
    iput p1, p0, Landroid/os/Message;->flags:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget p1, p0, Landroid/os/Message;->flags:I

    .line 11
    .line 12
    and-int/lit8 p1, p1, -0x3

    .line 13
    .line 14
    iput p1, p0, Landroid/os/Message;->flags:I

    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    return-void
.end method

.method public setTarget(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(J)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "{ when="

    .line 1
    invoke-static {v0}, Landroid/accessibilityservice/c;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-wide v1, p0, Landroid/os/Message;->when:J

    sub-long/2addr v1, p1

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 3
    iget-object p1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz p1, :cond_4

    .line 4
    iget-object p1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    const-string p1, " callback="

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object p1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p1, " what="

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget p1, p0, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    :goto_0
    iget p1, p0, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    const-string p1, " arg1="

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget p1, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    :cond_1
    iget p1, p0, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_2

    const-string p1, " arg2="

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget p1, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    :cond_2
    iget-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_3

    const-string p1, " obj="

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    const-string p1, " target="

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object p1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string p1, " barrier="

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget p1, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    const-string p1, " }"

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Landroid/os/Message;->what:I

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    .line 9
    .line 10
    iget v0, p0, Landroid/os/Message;->arg1:I

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    .line 14
    .line 15
    iget v0, p0, Landroid/os/Message;->arg2:I

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    :try_start_0
    check-cast v0, Landroid/os/Parcelable;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 35
    .line 36
    const-string p2, "Can\'t marshal non-Parcelable objects across processes."

    .line 37
    .line 38
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_0
    const/4 p2, 0x0

    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    .line 45
    .line 46
    :goto_0
    iget-wide v0, p0, Landroid/os/Message;->when:J

    .line 47
    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 54
    .line 55
    .line 56
    iget-object p2, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 57
    .line 58
    invoke-static {p2, p1}, Landroid/os/Messenger;->writeMessengerOrNullToParcel(Landroid/os/Messenger;Landroid/os/Parcel;)V

    .line 59
    .line 60
    .line 61
    iget p2, p0, Landroid/os/Message;->sendingUid:I

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 68
    .line 69
    const-string p2, "Can\'t marshal callbacks across processes."

    .line 70
    .line 71
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p1
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 4

    .line 1
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p2

    .line 5
    const-wide v0, 0x10400000001L

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    iget-wide v2, p0, Landroid/os/Message;->when:J

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 16
    .line 17
    if-eqz v0, :cond_4

    .line 18
    .line 19
    iget-object v0, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-wide v1, 0x10e00000002L

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const-wide v0, 0x10300000003L

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    iget v2, p0, Landroid/os/Message;->what:I

    .line 46
    .line 47
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 48
    .line 49
    .line 50
    :goto_0
    iget v0, p0, Landroid/os/Message;->arg1:I

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    const-wide v1, 0x10300000004L

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 60
    .line 61
    .line 62
    :cond_1
    iget v0, p0, Landroid/os/Message;->arg2:I

    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    const-wide v1, 0x10300000005L

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 72
    .line 73
    .line 74
    :cond_2
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    const-wide v1, 0x10e00000006L

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_3
    iget-object v0, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    const-wide v1, 0x10e00000007L

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_4
    const-wide v0, 0x10300000008L

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    iget v2, p0, Landroid/os/Message;->arg1:I

    .line 115
    .line 116
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 117
    .line 118
    .line 119
    :goto_1
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 120
    .line 121
    .line 122
    return-void
.end method
