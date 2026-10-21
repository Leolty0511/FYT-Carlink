.class public Lcom/syu/ipc/DataSyu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MCLS:[Lcom/syu/ipc/ModuleCallbackList;

.field public static vechile:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    new-array v0, v0, [Lcom/syu/ipc/ModuleCallbackList;

    .line 4
    .line 5
    sput-object v0, Lcom/syu/ipc/DataSyu;->MCLS:[Lcom/syu/ipc/ModuleCallbackList;

    .line 6
    .line 7
    new-instance v0, Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "stop"

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/syu/ipc/DataSyu;->vechile:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
