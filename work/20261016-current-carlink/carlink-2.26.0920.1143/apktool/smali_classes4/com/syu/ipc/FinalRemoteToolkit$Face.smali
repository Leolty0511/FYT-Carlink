.class public Lcom/syu/ipc/FinalRemoteToolkit$Face;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/ipc/FinalRemoteToolkit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Face"
.end annotation


# static fields
.field public static final ALL:I = 0x40000000

.field public static final FRONT:I = 0x10000

.field public static final LEFT:I = 0x1000

.field public static final NULL:I = 0x0

.field public static final REAR:I = 0x20000

.field public static final RIGHT:I = 0x2000


# instance fields
.field final synthetic this$0:Lcom/syu/ipc/FinalRemoteToolkit;


# direct methods
.method public constructor <init>(Lcom/syu/ipc/FinalRemoteToolkit;)V
    .locals 0

    iput-object p1, p0, Lcom/syu/ipc/FinalRemoteToolkit$Face;->this$0:Lcom/syu/ipc/FinalRemoteToolkit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
