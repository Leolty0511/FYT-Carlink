.class Landroid/os/CommonClock$TimelineChangedListener;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CommonClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimelineChangedListener"
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.ICommonClockListener"


# instance fields
.field final synthetic this$0:Landroid/os/CommonClock;


# direct methods
.method private constructor <init>(Landroid/os/CommonClock;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/os/CommonClock$TimelineChangedListener;->this$0:Landroid/os/CommonClock;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/CommonClock;Landroid/os/CommonClock$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/os/CommonClock$TimelineChangedListener;-><init>(Landroid/os/CommonClock;)V

    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    return p1

    .line 9
    :cond_0
    const-string p1, "android.os.ICommonClockListener"

    .line 10
    .line 11
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    iget-object p3, p0, Landroid/os/CommonClock$TimelineChangedListener;->this$0:Landroid/os/CommonClock;

    .line 19
    .line 20
    invoke-static {p3}, Landroid/os/CommonClock;->access$000(Landroid/os/CommonClock;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    monitor-enter p3

    .line 25
    :try_start_0
    iget-object p4, p0, Landroid/os/CommonClock$TimelineChangedListener;->this$0:Landroid/os/CommonClock;

    .line 26
    .line 27
    invoke-static {p4}, Landroid/os/CommonClock;->access$200(Landroid/os/CommonClock;)Landroid/os/CommonClock$OnTimelineChangedListener;

    .line 28
    .line 29
    .line 30
    move-result-object p4

    .line 31
    if-eqz p4, :cond_1

    .line 32
    .line 33
    iget-object p4, p0, Landroid/os/CommonClock$TimelineChangedListener;->this$0:Landroid/os/CommonClock;

    .line 34
    .line 35
    invoke-static {p4}, Landroid/os/CommonClock;->access$200(Landroid/os/CommonClock;)Landroid/os/CommonClock$OnTimelineChangedListener;

    .line 36
    .line 37
    .line 38
    move-result-object p4

    .line 39
    invoke-interface {p4, p1, p2}, Landroid/os/CommonClock$OnTimelineChangedListener;->onTimelineChanged(J)V

    .line 40
    .line 41
    .line 42
    :cond_1
    monitor-exit p3

    .line 43
    return v0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p1
.end method
