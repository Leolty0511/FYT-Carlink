.class Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Logging/EventManager$EventRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PendingResponse"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field requestEventId:Ljava/lang/String;

.field requestEventTimeMillis:J

.field final synthetic this$1:Landroid/telecom/Logging/EventManager$EventRecord;

.field timeoutMillis:J


# direct methods
.method public constructor <init>(Landroid/telecom/Logging/EventManager$EventRecord;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;->this$1:Landroid/telecom/Logging/EventManager$EventRecord;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;->requestEventId:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p3, p0, Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;->requestEventTimeMillis:J

    .line 9
    .line 10
    iput-wide p5, p0, Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;->timeoutMillis:J

    .line 11
    .line 12
    iput-object p7, p0, Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;->name:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method
