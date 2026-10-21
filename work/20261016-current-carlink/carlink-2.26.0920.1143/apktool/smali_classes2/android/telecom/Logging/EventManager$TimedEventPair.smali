.class public Landroid/telecom/Logging/EventManager$TimedEventPair;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Logging/EventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimedEventPair"
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT:J = 0xbb8L


# instance fields
.field mName:Ljava/lang/String;

.field mRequest:Ljava/lang/String;

.field mResponse:Ljava/lang/String;

.field mTimeoutMillis:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0xbb8

    .line 2
    iput-wide v0, p0, Landroid/telecom/Logging/EventManager$TimedEventPair;->mTimeoutMillis:J

    .line 3
    iput-object p1, p0, Landroid/telecom/Logging/EventManager$TimedEventPair;->mRequest:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Landroid/telecom/Logging/EventManager$TimedEventPair;->mResponse:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Landroid/telecom/Logging/EventManager$TimedEventPair;->mName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Landroid/telecom/Logging/EventManager$TimedEventPair;->mRequest:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Landroid/telecom/Logging/EventManager$TimedEventPair;->mResponse:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Landroid/telecom/Logging/EventManager$TimedEventPair;->mName:Ljava/lang/String;

    .line 10
    iput-wide p4, p0, Landroid/telecom/Logging/EventManager$TimedEventPair;->mTimeoutMillis:J

    return-void
.end method
