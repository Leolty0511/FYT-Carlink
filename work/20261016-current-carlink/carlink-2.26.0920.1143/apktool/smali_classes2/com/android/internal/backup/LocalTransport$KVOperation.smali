.class Lcom/android/internal/backup/LocalTransport$KVOperation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/backup/LocalTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KVOperation"
.end annotation


# instance fields
.field final key:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/backup/LocalTransport;

.field final value:[B


# direct methods
.method public constructor <init>(Lcom/android/internal/backup/LocalTransport;Ljava/lang/String;[B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/backup/LocalTransport$KVOperation;->this$0:Lcom/android/internal/backup/LocalTransport;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/internal/backup/LocalTransport$KVOperation;->key:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/internal/backup/LocalTransport$KVOperation;->value:[B

    .line 9
    .line 10
    return-void
.end method
