.class public Landroid/telecom/Logging/EventManager$Event;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Logging/EventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# instance fields
.field public data:Ljava/lang/Object;

.field public eventId:Ljava/lang/String;

.field public sessionId:Ljava/lang/String;

.field public time:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/telecom/Logging/EventManager$Event;->eventId:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/telecom/Logging/EventManager$Event;->sessionId:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p3, p0, Landroid/telecom/Logging/EventManager$Event;->time:J

    .line 9
    .line 10
    iput-object p5, p0, Landroid/telecom/Logging/EventManager$Event;->data:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method
