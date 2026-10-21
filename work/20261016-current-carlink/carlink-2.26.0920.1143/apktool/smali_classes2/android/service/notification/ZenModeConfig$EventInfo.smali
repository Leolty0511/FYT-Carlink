.class public Landroid/service/notification/ZenModeConfig$EventInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenModeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventInfo"
.end annotation


# static fields
.field public static final REPLY_ANY_EXCEPT_NO:I = 0x0

.field public static final REPLY_YES:I = 0x2

.field public static final REPLY_YES_OR_MAYBE:I = 0x1


# instance fields
.field public calendar:Ljava/lang/String;

.field public reply:I

.field public userId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, -0x2710

    .line 5
    .line 6
    iput v0, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    .line 7
    .line 8
    return-void
.end method

.method public static resolveUserId(I)I
    .locals 1

    const/16 v0, -0x2710

    if-ne p0, v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0

    :cond_0
    return p0
.end method


# virtual methods
.method public copy()Landroid/service/notification/ZenModeConfig$EventInfo;
    .locals 2

    .line 1
    new-instance v0, Landroid/service/notification/ZenModeConfig$EventInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$EventInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    .line 7
    .line 8
    iput v1, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    .line 9
    .line 10
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    .line 13
    .line 14
    iget v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    .line 15
    .line 16
    iput v1, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    .line 17
    .line 18
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/service/notification/ZenModeConfig$EventInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Landroid/service/notification/ZenModeConfig$EventInfo;

    .line 8
    .line 9
    iget v0, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    .line 10
    .line 11
    iget v2, p1, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    .line 12
    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget v0, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    .line 26
    .line 27
    iget p1, p1, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    .line 28
    .line 29
    if-ne v0, p1, :cond_1

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
