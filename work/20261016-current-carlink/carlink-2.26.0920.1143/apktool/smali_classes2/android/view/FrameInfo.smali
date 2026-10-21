.class final Landroid/view/FrameInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/FrameInfo$FrameInfoFlags;
    }
.end annotation


# static fields
.field private static final ANIMATION_START:I = 0x6

.field private static final DRAW_START:I = 0x8

.field private static final FLAGS:I = 0x0

.field public static final FLAG_WINDOW_LAYOUT_CHANGED:J = 0x1L

.field private static final HANDLE_INPUT_START:I = 0x5

.field private static final INTENDED_VSYNC:I = 0x1

.field private static final NEWEST_INPUT_EVENT:I = 0x4

.field private static final OLDEST_INPUT_EVENT:I = 0x3

.field private static final PERFORM_TRAVERSALS_START:I = 0x7

.field private static final VSYNC:I = 0x2


# instance fields
.field mFrameInfo:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x9

    .line 5
    .line 6
    new-array v0, v0, [J

    .line 7
    .line 8
    iput-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public addFlags(J)V
    .locals 4

    iget-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    or-long/2addr p1, v2

    aput-wide p1, v0, v1

    return-void
.end method

.method public markAnimationsStart()V
    .locals 4

    iget-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    const/4 v1, 0x6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    aput-wide v2, v0, v1

    return-void
.end method

.method public markDrawStart()V
    .locals 4

    iget-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    const/16 v1, 0x8

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    aput-wide v2, v0, v1

    return-void
.end method

.method public markInputHandlingStart()V
    .locals 4

    iget-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    const/4 v1, 0x5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    aput-wide v2, v0, v1

    return-void
.end method

.method public markPerformTraversalsStart()V
    .locals 4

    iget-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    const/4 v1, 0x7

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    aput-wide v2, v0, v1

    return-void
.end method

.method public setVsync(JJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aput-wide p1, v0, v1

    .line 5
    .line 6
    const/4 p1, 0x2

    .line 7
    aput-wide p3, v0, p1

    .line 8
    .line 9
    const/4 p1, 0x3

    .line 10
    const-wide p2, 0x7fffffffffffffffL

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    aput-wide p2, v0, p1

    .line 16
    .line 17
    const/4 p1, 0x4

    .line 18
    const-wide/16 p2, 0x0

    .line 19
    .line 20
    aput-wide p2, v0, p1

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    aput-wide p2, v0, p1

    .line 24
    .line 25
    return-void
.end method

.method public updateInputEventTime(JJ)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    aget-wide v2, v0, v1

    .line 5
    .line 6
    cmp-long v2, p3, v2

    .line 7
    .line 8
    if-gez v2, :cond_0

    .line 9
    .line 10
    aput-wide p3, v0, v1

    .line 11
    .line 12
    :cond_0
    const/4 p3, 0x4

    .line 13
    aget-wide v1, v0, p3

    .line 14
    .line 15
    cmp-long p4, p1, v1

    .line 16
    .line 17
    if-lez p4, :cond_1

    .line 18
    .line 19
    aput-wide p1, v0, p3

    .line 20
    .line 21
    :cond_1
    return-void
.end method
